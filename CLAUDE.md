# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Sngine v4.2.1 — a PHP social network platform. Custom PHP 8.2+ application using trait-based composition, Smarty templating, MySQLi for database access, and an Express-style REST API layer.

## Development Setup

**Docker (recommended):**
```bash
docker-compose up --build
# App: http://localhost, PHPMyAdmin: http://localhost:8080
# MySQL root password: 123456
```

**Dependencies:**
```bash
composer install
npm install
```

**Cron job** (requires hash from admin settings):
```
GET /cronjob.php?hash=<cronjob_hash>
```

**No test framework, linter, or build pipeline exists in this project.**

## Architecture

### Request Flow

1. Apache `.htaccess` rewrites clean URLs to PHP files with query params
2. PHP entry file → `bootloader.php` → `bootstrap.php`
3. Bootstrap initializes: config → DB → system options → session → Smarty → User object
4. Controller logic runs, assigns Smarty variables, renders `.tpl` template
5. AJAX endpoints return JSON via `return_json()`

### Entry Points

| File | Purpose |
|------|---------|
| `index.php` | Main newsfeed/homepage |
| `admin.php` | Admin control panel |
| `api.php` | OAuth/legacy API |
| `apis/php/index.php` | REST API v1.0 (Express-style routing) |
| `install.php` | Installation wizard |
| `cronjob.php` | Scheduled tasks |

Feature pages at root: `profile.php`, `page.php`, `group.php`, `event.php`, `blogs.php`, `forums.php`, `market.php`, `settings.php`, etc.

### Core Files

- **`includes/functions.php`** (~8800 lines) — All utility functions: DB init, session management, security helpers, Smarty setup, `user_access()`, `return_json()`, `_error()`, `modal()`, `secure()`
- **`includes/class-user.php`** (~5200 lines) — Central User class composing 48 traits from `includes/traits/`
- **`includes/config.php`** — DB credentials, `SYS_URL`, `DEBUGGING` flag (template: `config-example.php`)
- **`bootstrap.php`** → `bootloader.php` — Initialization chain (DB, system options from `system_options` table, session, Smarty, User)

### User Class Trait System

The `User` class in `class-user.php` uses ~48 traits from `includes/traits/` for feature domains: `posts.php`, `chat.php`, `groups.php`, `events.php`, `payments.php`, `wallet.php`, `notifications.php`, `marketplace.php`, `blogs.php`, `stories.php`, etc. Each trait contains all methods for that feature.

### Routing

URL rewriting is in `.htaccess`. Examples:
- `/signin` → `modules/sign.php?do=in`
- `/pages/{username}` → `page.php?username=$1`
- `/admincp/{view}/{sub}` → `admin.php?view=$1&sub_view=$2`
- `/{username}` → `profile.php?username=$1` (catch-all)

### REST API (`apis/php/`)

Express-like router in `libs/Express.php`. Module pattern:
```
apis/php/modules/{feature}/
├── router.php       # Route definitions ($app->get(), $app->post())
└── controller.php   # Business logic functions
```
Auth via JWT in `x-auth-token` header. HMAC signature validation for API security.

### AJAX Pattern

Files in `includes/ajax/{feature}/`. Standard pattern:
```php
require('../../../bootstrap.php');
is_ajax();
user_access(true);
// validate input, call $user->method(), return_json() or modal()
```

### Templates

Smarty templates in `content/themes/default/templates/` (`.tpl` files). Compiled cache in `templates_compiled/`. Custom Smarty modifiers: `__` (translation), `print_money`, `date`, `number_format`.

### Global Variables

- `$db` — MySQLi connection
- `$system` — All system options (from `system_options` table)
- `$user` — User object instance
- `$smarty` — Smarty template engine
- `$gettextTranslator` — i18n translator

### Database

MySQLi with `sprintf()` + `secure($value, $type)` for parameterization. No ORM. Charset: utf8mb4, timezone: UTC.

### Authentication

Cookie-based (`c_user` + `xs`) for web, JWT for API. Sessions stored in `users_sessions` table. User groups: 1=Admin, 2=Moderator, 3=Regular.

### Key Directories

| Directory | Purpose |
|-----------|---------|
| `includes/traits/` | 48 User class trait files (feature modules) |
| `includes/ajax/` | AJAX endpoint handlers (core, posts, users, payments, admin, modules) |
| `modules/` | Page modules (sign-in/up, connect, activation) |
| `apis/php/modules/` | REST API modules (auth, user, data, chat, monetization, app) |
| `content/themes/default/` | Smarty templates, CSS, images |
| `content/uploads/` | User-generated content |
| `webhooks/` | Payment gateway webhooks |
| `sockets/` | WebSocket handlers (Workerman) |

### Key Integrations

- **Payments:** Stripe, PayPal, 2Checkout, Authorize.net, Razorpay, Cashfree, Shift4
- **Storage:** AWS S3, Google Cloud Storage, Azure Blob, DigitalOcean Spaces
- **Auth:** HybridAuth (social login), Google Authenticator (2FA), Firebase JWT
- **Real-time:** Workerman (PHP sockets), LiveKit, Agora
- **Email:** PHPMailer, Twilio (SMS)
