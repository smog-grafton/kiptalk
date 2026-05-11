# Coolify Deployment

This project now supports a single-container Docker deployment that is better suited to Coolify than the bundled `docker/docker-compose.yml`.

## Recommended approach

Use the root `Dockerfile` in Coolify.

Why:

- It keeps Apache + PHP in one container, which matches the app's existing `.htaccess` routing.
- It preserves the installer flow.
- It avoids publishing MySQL, Redis, and phpMyAdmin from inside the app container.
- It lets Coolify manage the database separately.

## Database

Create a MySQL 8 or MariaDB 10+ database in Coolify and connect this app to it.

## Two supported setup modes

### 1. Installer mode

Use this if you want to open `/install` in the browser and complete setup manually.

Set:

- `KIPTALK_RESET_CONFIG=true`
- `KIPTALK_USE_ENV_CONFIG=false`

Do not set the `APP_DB_*` variables unless you want the container to generate `includes/config.php` for you.

### 2. Env-config mode

Use this if you want the container to generate `includes/config.php` automatically on startup.

Set:

- `KIPTALK_USE_ENV_CONFIG=true`
- `APP_URL=https://your-domain.com`
- `APP_DB_HOST=your-db-host`
- `APP_DB_PORT=3306`
- `APP_DB_NAME=your-db-name`
- `APP_DB_USER=your-db-user`
- `APP_DB_PASSWORD=your-db-password`

Optional:

- `APP_URL_CHECK=true`
- `APP_DEBUG=false`
- `APP_DEFAULT_LOCALE=en_us`

## Coolify environment variables

Recommended app variables:

- `KIPTALK_RESET_CONFIG=true` for first install only
- `KIPTALK_USE_ENV_CONFIG=false` if using the web installer
- `APP_URL=https://your-domain.com` if using env-config mode
- `APP_DB_HOST=...`
- `APP_DB_PORT=3306`
- `APP_DB_NAME=...`
- `APP_DB_USER=...`
- `APP_DB_PASSWORD=...`
- `APP_URL_CHECK=true`
- `APP_DEBUG=false`
- `APP_DEFAULT_LOCALE=en_us`

## Persistent storage

Mount persistent storage for:

- `/var/www/html/content/uploads`
- `/var/www/html/content/themes/default/templates_compiled`

If you use env-config mode and want the generated config to survive restarts without re-generation, you can also persist:

- `/var/www/html/includes`

Usually this is not necessary if `KIPTALK_USE_ENV_CONFIG=true`.

## Mail

The image includes `msmtp-mta` so PHP `mail()` is available, but reliable production email is still best handled by configuring SMTP inside the app admin panel.

## Important security note

Do not commit `includes/config.php` to Git. This file contains secrets and should stay environment-specific.
