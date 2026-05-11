#!/bin/sh
set -eu

APP_ROOT="/var/www/html"
CONFIG_FILE="$APP_ROOT/includes/config.php"
UPLOADS_DIR="$APP_ROOT/content/uploads"
COMPILED_DIR="$APP_ROOT/content/themes/default/templates_compiled"

mkdir -p "$UPLOADS_DIR" "$COMPILED_DIR"
chown -R www-data:www-data "$UPLOADS_DIR" "$COMPILED_DIR"
chmod -R ug+rwX "$UPLOADS_DIR" "$COMPILED_DIR"

if [ "${KIPTALK_RESET_CONFIG:-false}" = "true" ]; then
  rm -f "$CONFIG_FILE"
fi

if [ "${KIPTALK_USE_ENV_CONFIG:-false}" = "true" ]; then
  : "${APP_DB_NAME:?APP_DB_NAME is required when KIPTALK_USE_ENV_CONFIG=true}"
  : "${APP_DB_USER:?APP_DB_USER is required when KIPTALK_USE_ENV_CONFIG=true}"
  : "${APP_DB_PASSWORD:?APP_DB_PASSWORD is required when KIPTALK_USE_ENV_CONFIG=true}"
  : "${APP_DB_HOST:?APP_DB_HOST is required when KIPTALK_USE_ENV_CONFIG=true}"
  : "${APP_URL:?APP_URL is required when KIPTALK_USE_ENV_CONFIG=true}"

  cat > "$CONFIG_FILE" <<EOF
<?php
define("DB_NAME", '${APP_DB_NAME}');
define("DB_USER", '${APP_DB_USER}');
define("DB_PASSWORD", '${APP_DB_PASSWORD}');
define("DB_HOST", '${APP_DB_HOST}');
define("DB_PORT", '${APP_DB_PORT:-3306}');
define("SYS_URL", '${APP_URL}');
define("URL_CHECK", ${APP_URL_CHECK:-true});
define("DEBUGGING", ${APP_DEBUG:-false});
define("DEFAULT_LOCALE", '${APP_DEFAULT_LOCALE:-en_us}');
?>
EOF

  chown www-data:www-data "$CONFIG_FILE"
  chmod 640 "$CONFIG_FILE"
fi

exec "$@"
