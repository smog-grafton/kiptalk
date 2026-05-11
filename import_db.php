<?php

declare(strict_types=1);

set_time_limit(0);

$token = $_GET['token'] ?? '';
$force = isset($_GET['force']) && $_GET['force'] === '1';
$dumpFile = __DIR__ . '/u636854834_kiptalk_new.sql';

$envToken = getenv('KIPTALK_DB_IMPORT_TOKEN') ?: '';
if ($envToken === '') {
    http_response_code(503);
    exit('KIPTALK_DB_IMPORT_TOKEN is not configured');
}

if (!hash_equals($envToken, $token)) {
    http_response_code(403);
    exit('Invalid token');
}

if (!file_exists($dumpFile)) {
    http_response_code(500);
    exit('SQL dump file not found');
}

$configFile = __DIR__ . '/includes/config.php';
if (file_exists($configFile)) {
    require_once $configFile;
}

$dbName = getenv('DB_DATABASE') ?: getenv('APP_DB_NAME') ?: (defined('DB_NAME') ? DB_NAME : '');
$dbUser = getenv('DB_USERNAME') ?: getenv('APP_DB_USER') ?: (defined('DB_USER') ? DB_USER : '');
$dbPassword = getenv('DB_PASSWORD') ?: getenv('APP_DB_PASSWORD') ?: (defined('DB_PASSWORD') ? DB_PASSWORD : '');
$dbHost = getenv('DB_HOST') ?: getenv('APP_DB_HOST') ?: (defined('DB_HOST') ? DB_HOST : 'localhost');
$dbPort = getenv('DB_PORT') ?: getenv('APP_DB_PORT') ?: (defined('DB_PORT') ? DB_PORT : '3306');

if ($dbName === '' || $dbUser === '' || $dbHost === '') {
    http_response_code(500);
    exit('Database configuration is incomplete');
}

$mysqli = new mysqli($dbHost, $dbUser, $dbPassword, $dbName, (int) $dbPort);
if ($mysqli->connect_error) {
    http_response_code(500);
    exit('Database connection failed: ' . $mysqli->connect_error);
}

$mysqli->set_charset('utf8mb4');

$tableExistsResult = $mysqli->query("SHOW TABLES LIKE 'system_options'");
if (!$force && $tableExistsResult && $tableExistsResult->num_rows > 0) {
    exit('Database already initialized');
}

$sql = file_get_contents($dumpFile);
if ($sql === false) {
    http_response_code(500);
    exit('Unable to read SQL dump');
}

if (!$mysqli->multi_query($sql)) {
    http_response_code(500);
    exit('SQL import failed: ' . $mysqli->error);
}

do {
    if ($result = $mysqli->store_result()) {
        $result->free();
    }
} while ($mysqli->more_results() && $mysqli->next_result());

if ($mysqli->errno) {
    http_response_code(500);
    exit('SQL import failed: ' . $mysqli->error);
}

echo 'Database import completed successfully';
