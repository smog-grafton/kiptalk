# Sngine API Documentation

**Version:** 4.2.1  
**Base URL:** `https://yourdomain.com`

---

## Table of Contents

1. [Overview](#1-overview)
2. [Authentication](#2-authentication)
3. [REST API Endpoints](#3-rest-api-endpoints)
   - [Core](#31-core)
   - [Auth Module](#32-auth-module)
   - [App Module](#33-app-module)
   - [User Module](#34-user-module)
   - [Data Module](#35-data-module)
   - [Chat Module](#36-chat-module)
   - [Monetization Module](#37-monetization-module)
4. [Legacy OAuth API](#4-legacy-oauth-api)
5. [AJAX Endpoints](#5-ajax-endpoints)
6. [WebSocket API](#6-websocket-api)
7. [Webhook Handlers](#7-webhook-handlers)
8. [Error Handling](#8-error-handling)
9. [Quick Start Examples](#9-quick-start-examples)

---

## 1. Overview

Sngine exposes three distinct API systems:

| System | Base Path | Auth Method | Purpose |
|--------|-----------|-------------|---------|
| **REST API** | `/apis/php/` | API Key + HMAC Signature | Mobile apps, third-party integrations |
| **Legacy OAuth API** | `/api/` | OAuth flow (app_id/app_secret) | Third-party app user authorization |
| **AJAX Endpoints** | `/includes/ajax/` | Session cookies + XMLHttpRequest header | Internal web UI operations |

### Response Format (REST API)

**Success:**
```json
{
  "status": "success",
  "message": "Optional message",
  "data": { },
  "has_more": false,
  "timestamp": "2026-04-08 12:00:00"
}
```

**Error:**
```json
{
  "status": "error",
  "message": "Error description",
  "timestamp": "2026-04-08 12:00:00"
}
```

### HTTP Status Codes

| Code | Meaning |
|------|---------|
| 200 | Success |
| 400 | Bad Request — invalid or missing parameters |
| 401 | Unauthorized — invalid API key, expired signature, or not logged in |
| 403 | Forbidden — insufficient permissions |
| 404 | Not Found |
| 500 | Internal Server Error |

---

## 2. Authentication

### 2.1 REST API Authentication (HMAC Signature)

Every request to the REST API (`/apis/php/*`) requires three headers:

| Header | Description |
|--------|-------------|
| `X-API-Key` | Your system API key (found in Admin Panel > Settings) |
| `X-Signature` | HMAC-SHA256 hash of the timestamp using the API secret |
| `X-Timestamp` | Current Unix timestamp (must be within 300 seconds of server time) |

**Generating the signature:**

```php
// PHP
$timestamp = time();
$signature = hash_hmac('sha256', $timestamp, $apiSecret);
```

```javascript
// JavaScript (Node.js)
const crypto = require('crypto');
const timestamp = Math.floor(Date.now() / 1000).toString();
const signature = crypto.createHmac('sha256', apiSecret).update(timestamp).digest('hex');
```

```python
# Python
import hmac, hashlib, time
timestamp = str(int(time.time()))
signature = hmac.new(api_secret.encode(), timestamp.encode(), hashlib.sha256).hexdigest()
```

**Where to find your API credentials:**
- Admin Panel > Dashboard > API Settings
- `system_api_key` — 48-character hex string
- `system_api_secret` — 64-character hex string

### 2.2 User Authentication

Most endpoints require a logged-in user session. After calling `/auth/signin`, the server sets session cookies that must be included in subsequent requests.

**Public endpoints (no user session required):**
- `/ping`
- `/app/settings`
- `/app/contact_us`
- `/app/static_pages`, `/app/static_pages/:page_url`
- `/app/genders`
- `/app/user_groups`
- `/app/languages`
- `/app/countries`
- `/app/custom_fields`
- `/app/categories`
- `/auth/signup`
- `/auth/signin`
- `/auth/two_factor_authentication`
- `/auth/forget_password`
- `/auth/forget_password_confirm`
- `/auth/forget_password_reset`
- `/400`, `/401`, `/403`, `/404`, `/500`

### 2.3 JWT Authentication (WebSockets)

WebSocket connections use JWT tokens passed as a query parameter:

```
wss://yourdomain.com:PORT?jwt=YOUR_JWT_TOKEN
```

JWT tokens are generated automatically during sign-in/sign-up and stored in the `user_jwt` cookie. The JWT payload contains:
- `uid` — User ID
- `token` — Session token
- `iat` — Issued at timestamp
- `exp` — Expiration timestamp

Algorithm: `HS256` (HMAC-SHA256) with `system_jwt_key`.

### 2.4 Legacy OAuth Authentication

See [Section 4: Legacy OAuth API](#4-legacy-oauth-api) for the full OAuth authorization flow.

---

## 3. REST API Endpoints

**Base Path:** `/apis/php`  
**Content-Type:** `application/json` (except file uploads)

All request bodies are sent as JSON. Query parameters are used for GET requests.

---

### 3.1 Core

| Method | Endpoint | Auth | Description |
|--------|----------|------|-------------|
| GET | `/ping` | No | Health check |

**GET /ping**

Returns a simple health check response.

```
Response: { "status": "success", "message": "pong", "timestamp": "..." }
```

---

### 3.2 Auth Module

All auth endpoints use **POST** method.

| Method | Endpoint | Auth Required | Description |
|--------|----------|---------------|-------------|
| POST | `/auth/signup` | No | Register a new user account |
| POST | `/auth/activation` | Yes | Activate account with code |
| POST | `/auth/activation_resend` | Yes | Resend activation code |
| POST | `/auth/activation_reset` | Yes | Reset activation (change email/phone) |
| POST | `/auth/getting_started_update` | Yes | Update getting started profile form |
| POST | `/auth/getting_started_finish` | Yes | Complete getting started flow |
| POST | `/auth/signin` | No | Sign in to an existing account |
| POST | `/auth/two_factor_authentication` | No | Verify two-factor authentication code |
| POST | `/auth/signout` | Yes | Sign out and destroy session |
| POST | `/auth/forget_password` | No | Request a password reset |
| POST | `/auth/forget_password_confirm` | No | Confirm password reset with code |
| POST | `/auth/forget_password_reset` | No | Set new password |

---

#### POST /auth/signup

Register a new user account.

**Request Body:**
```json
{
  "username": "johndoe",
  "email": "john@example.com",
  "password": "securepassword",
  "first_name": "John",
  "last_name": "Doe",
  "gender": "1",
  "device_type": "A",
  "device_os_version": "14.0",
  "device_name": "Pixel 8"
}
```

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `username` | string | Yes | Unique username |
| `email` | string | Yes | Valid email address |
| `password` | string | Yes | Account password |
| `first_name` | string | Yes | First name |
| `last_name` | string | Yes | Last name |
| `gender` | string | Yes | Gender ID (from `/app/genders`) |
| `device_type` | string | Yes | `"A"` (Android) or `"I"` (iOS) |
| `device_os_version` | string | Yes | OS version string |
| `device_name` | string | Yes | Device model name |

**Response:** Returns user data and session info on success.

---

#### POST /auth/signin

Sign in to an existing account.

**Request Body:**
```json
{
  "username_email": "john@example.com",
  "password": "securepassword",
  "device_type": "A",
  "device_os_version": "14.0",
  "device_name": "Pixel 8"
}
```

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `username_email` | string | Yes | Username or email address |
| `password` | string | Yes | Account password |
| `device_type` | string | Yes | `"A"` (Android) or `"I"` (iOS) |
| `device_os_version` | string | Yes | OS version string |
| `device_name` | string | Yes | Device model name |

**Response:** Returns user data and session info. If 2FA is enabled, returns a `two_factor_key` and `user_id` to use with `/auth/two_factor_authentication`.

---

#### POST /auth/two_factor_authentication

Complete two-factor authentication after sign-in.

**Request Body:**
```json
{
  "two_factor_key": "abc123",
  "user_id": "42",
  "device_type": "A",
  "device_os_version": "14.0",
  "device_name": "Pixel 8"
}
```

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `two_factor_key` | string | Yes | 2FA verification code |
| `user_id` | string | Yes | User ID returned from signin |
| `device_type` | string | Yes | `"A"` or `"I"` |
| `device_os_version` | string | Yes | OS version |
| `device_name` | string | Yes | Device name |

---

#### POST /auth/activation

Activate account using verification code.

**Request Body:**
```json
{
  "code": "123456"
}
```

Activation type (email or SMS) is configured in admin settings. The same endpoint handles both.

---

#### POST /auth/activation_resend

Resend the activation code. No body parameters required.

---

#### POST /auth/activation_reset

Reset activation to a different email or phone.

**Request Body (email activation):**
```json
{
  "email": "newemail@example.com"
}
```

**Request Body (phone activation):**
```json
{
  "phone": "+1234567890"
}
```

---

#### POST /auth/signout

Destroy the current session. No body parameters required.

---

#### POST /auth/forget_password

Initiate password reset.

**Request Body:**
```json
{
  "email": "john@example.com"
}
```

---

#### POST /auth/forget_password_confirm

Confirm password reset with the emailed code.

**Request Body:**
```json
{
  "email": "john@example.com",
  "reset_key": "abc123"
}
```

---

#### POST /auth/forget_password_reset

Set a new password.

**Request Body:**
```json
{
  "email": "john@example.com",
  "reset_key": "abc123",
  "password": "newpassword",
  "confirm": "newpassword"
}
```

---

### 3.3 App Module

Configuration and reference data endpoints. **All are public (no user session required) except `/app/categories`.**

| Method | Endpoint | Auth Required | Description |
|--------|----------|---------------|-------------|
| GET | `/app/settings` | No | Get system and user settings |
| POST | `/app/contact_us` | No | Submit a contact form |
| GET | `/app/static_pages` | No | List all static pages |
| GET | `/app/static_pages/:page_url` | No | Get a specific static page |
| GET | `/app/genders` | No | List available genders |
| GET | `/app/user_groups` | No | List user group types |
| GET | `/app/languages` | No | List supported languages |
| GET | `/app/countries` | No | List countries |
| GET | `/app/custom_fields` | No | List custom profile fields |
| GET | `/app/categories` | No | List categories by type |

---

#### GET /app/settings

Returns system configuration. If the user is logged in, also returns user profile data.

**Response:**
```json
{
  "status": "success",
  "data": {
    "system": {
      "system_title": "My Social Network",
      "system_url": "https://example.com",
      "...": "system configuration values"
    },
    "user": {
      "user_id": 1,
      "user_name": "johndoe",
      "...": "user profile data (only if logged in)"
    }
  }
}
```

---

#### POST /app/contact_us

Submit a contact form message.

**Request Body:**
```json
{
  "name": "John Doe",
  "email": "john@example.com",
  "subject": "Question about the platform",
  "message": "I have a question about..."
}
```

---

#### GET /app/static_pages/:page_url

Get a specific static page by its URL slug.

**URL Parameters:**
- `:page_url` — The page URL slug (e.g., `terms`, `privacy`, `about`)

---

#### GET /app/categories

List categories of a specific type.

**Query Parameters:**
- `get` — Category type to retrieve (e.g., `blogs`, `pages`, `groups`, `events`, `marketplace`)

---

### 3.4 User Module

All user endpoints require authentication and use **POST** method.

| Method | Endpoint | Auth Required | Description |
|--------|----------|---------------|-------------|
| POST | `/user/connect` | Yes | Follow/friend/unfriend a user |
| POST | `/user/image_delete` | Yes | Delete avatar or cover image |
| POST | `/user/onesignal` | Yes | Update OneSignal push notification ID |
| POST | `/user/delete` | Yes | Permanently delete account |

---

#### POST /user/connect

Manage social connections (follow, friend request, unfriend, etc.).

**Request Body:**
```json
{
  "do": "follow",
  "id": "42",
  "uid": "0"
}
```

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `do` | string | Yes | Action: `"follow"`, `"unfollow"`, `"friend"`, `"unfriend"`, etc. |
| `id` | string | Yes | Target user ID |
| `uid` | string | No | Additional user ID (set `"0"` or omit for null) |

> Blocked for demo accounts.

---

#### POST /user/image_delete

Delete the user's avatar or cover image.

**Request Body:**
```json
{
  "handle": "picture"
}
```

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `handle` | string | Yes | `"picture"` (avatar) or `"cover"` (cover image) |

> Blocked for demo accounts.

---

#### POST /user/onesignal

Update the OneSignal player ID for push notifications.

**Request Body:**
```json
{
  "onesignal_id": "player-id-string"
}
```

---

#### POST /user/delete

Permanently delete the authenticated user's account.

**Request Body:**
```json
{
  "password": "currentpassword"
}
```

> Requires password verification. Blocked for demo accounts.

---

### 3.5 Data Module

| Method | Endpoint | Auth Required | Description |
|--------|----------|---------------|-------------|
| GET | `/data/load` | Yes | Load paginated data |
| POST | `/data/upload` | Yes | Upload files |
| POST | `/data/delete` | Yes | Delete an uploaded file |
| POST | `/data/reset` | Yes | Reset real-time counters |
| POST | `/data/report` | Yes | Report content |

---

#### GET /data/load

Load paginated data by type.

**Query Parameters:**
- `get` — Data type to load. Currently supported: `"new_people"`
- `offset` — Pagination offset (integer)
- `random` — Random seed (for `new_people`)

**Example:** `GET /data/load?get=new_people&offset=0`

---

#### POST /data/upload

Upload files (photos, videos, etc.).

**Content-Type:** `multipart/form-data` (NOT JSON — this endpoint bypasses JSON parsing)

Send files as standard multipart form upload.

> Blocked for demo accounts.

---

#### POST /data/delete

Delete a previously uploaded file.

**Request Body:**
```json
{
  "src": "uploads/photos/2026/04/filename.jpg"
}
```

> Blocked for demo accounts.

---

#### POST /data/reset

Reset real-time notification counters.

**Request Body:**
```json
{
  "reset": "notifications"
}
```

---

#### POST /data/report

Report content for moderation.

**Request Body:**
```json
{
  "id": "123",
  "handle": "post",
  "category": "spam",
  "reason": "This post contains spam content"
}
```

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | string | Yes | ID of the content being reported |
| `handle` | string | Yes | Content type: `"post"`, `"user"`, `"page"`, `"group"`, `"comment"`, etc. |
| `category` | string | Yes | Report category |
| `reason` | string | Yes | Detailed reason for the report |

---

### 3.6 Chat Module

| Method | Endpoint | Auth Required | Description |
|--------|----------|---------------|-------------|
| GET | `/chat/conversations` | Yes | List conversations |
| GET | `/chat/conversation` | Yes | Get a single conversation |
| DELETE | `/chat/conversation/:id` | Yes | Delete a conversation |
| GET | `/chat/messages` | Yes | Get messages in a conversation |
| POST | `/chat/message` | Yes | Send a message |
| DELETE | `/chat/message/:id` | Yes | Delete a message |
| POST | `/chat/actions/typing` | Yes | Update typing indicator |
| POST | `/chat/actions/seen` | Yes | Mark messages as seen |
| POST | `/chat/actions/leave` | Yes | Leave a conversation |
| POST | `/chat/reactions/react` | Yes | React/unreact to a message |
| GET | `/chat/reactions/who_reacts` | Yes | List who reacted to a message |
| GET | `/chat/calls` | Yes | Get call history |
| GET | `/chat/contacts` | Yes | Get contacts for messaging |

---

#### GET /chat/conversations

List the current user's conversations with pagination.

**Query Parameters:**
- `offset` — Pagination offset (integer, default 0)

**Response:**
```json
{
  "status": "success",
  "data": [ { "conversation_id": 1, "..." : "..." } ],
  "has_more": true
}
```

---

#### GET /chat/conversation

Get a single conversation by ID or by user ID.

**Query Parameters:**
- `conversation_id` — Conversation ID (use this OR `user_id`)
- `user_id` — Start/get conversation with this user

---

#### DELETE /chat/conversation/:id

Delete a conversation. The `:id` is the conversation ID in the URL path.

---

#### GET /chat/messages

Get messages within a conversation.

**Query Parameters:**
- `conversation_id` — Required. The conversation to load messages from
- `offset` — Pagination offset (integer)
- `last_message_id` — Load messages after this ID (for real-time updates)

**Response:**
```json
{
  "status": "success",
  "data": {
    "messages": [ { "message_id": 1, "message": "Hello!", "..." : "..." } ],
    "has_more": true,
    "typing_name_list": "John",
    "seen_name_list": "Jane",
    "user_is_online": true,
    "user_last_seen": "2026-04-08 12:00:00"
  }
}
```

---

#### POST /chat/message

Send a new message.

**Request Body:**
```json
{
  "conversation_id": "1",
  "message": "Hello there!",
  "photo": null,
  "video": null,
  "voice_note": null,
  "recipients": ["42", "55"]
}
```

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `conversation_id` | string | No | Existing conversation ID (omit if starting new) |
| `message` | string | No | Text message content |
| `photo` | string | No | Photo URL (from upload endpoint) |
| `video` | string | No | Video URL (from upload endpoint) |
| `voice_note` | string | No | Voice note URL (from upload endpoint) |
| `recipients` | array | No | Array of user IDs for new conversations |

At least one of `message`, `photo`, `video`, or `voice_note` is required.

---

#### DELETE /chat/message/:id

Delete a specific message by its ID.

---

#### POST /chat/actions/typing

Broadcast typing indicator to other conversation participants.

**Request Body:**
```json
{
  "conversation_id": "1",
  "is_typing": true
}
```

---

#### POST /chat/actions/seen

Mark messages as read/seen.

**Request Body:**
```json
{
  "ids": ["1", "2", "3"]
}
```

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `ids` | array | Yes | Array of conversation IDs to mark as seen |

---

#### POST /chat/actions/leave

Leave a group conversation.

**Request Body:**
```json
{
  "conversation_id": "1"
}
```

---

#### POST /chat/reactions/react

Add or remove a reaction on a message.

**Request Body:**
```json
{
  "do": "react",
  "message_id": "123",
  "reaction": "like"
}
```

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `do` | string | Yes | `"react"` to add, `"unreact"` to remove |
| `message_id` | string | Yes | Target message ID |
| `reaction` | string | Yes | Reaction type (e.g., `"like"`, `"love"`, `"haha"`) |

---

#### GET /chat/reactions/who_reacts

List users who reacted to a message.

**Query Parameters:**
- `message_id` — Required. The message ID
- `reaction_type` — Filter by reaction type
- `offset` — Pagination offset

---

#### GET /chat/calls

Get call history with pagination.

**Query Parameters:**
- `offset` — Pagination offset (integer)

**Response:**
```json
{
  "status": "success",
  "data": [ { "call_id": 1, "..." : "..." } ],
  "has_more": false
}
```

---

#### GET /chat/contacts

Search contacts for starting new conversations.

**Query Parameters:**
- `query` — Search string (optional, for filtering by name)
- `offset` — Pagination offset (integer)
- `skipped_ids` — JSON array of user IDs to exclude, e.g., `"[1,2,3]"`

---

### 3.7 Monetization Module

| Method | Endpoint | Auth Required | Description |
|--------|----------|---------------|-------------|
| GET | `/monetization/monetization_plans` | Yes | List all monetization plans |
| POST | `/monetization/monetization_plans` | Yes | Create a new plan |
| GET | `/monetization/monetization_plans/:id` | Yes | Get a specific plan |
| PUT | `/monetization/monetization_plans/:id` | Yes | Update a plan |
| DELETE | `/monetization/monetization_plans/:id` | Yes | Delete a plan |

> Write operations require the user to have `can_monetize_content` permission. Blocked for demo accounts.

---

#### GET /monetization/monetization_plans

List all monetization plans for the current user.

---

#### POST /monetization/monetization_plans

Create a new monetization plan.

**Request Body:**
```json
{
  "node_id": "1",
  "node_type": "profile",
  "title": "Premium Tier",
  "price": "9.99",
  "period_num": "1",
  "period": "month",
  "custom_description": "Access to all premium content",
  "plan_order": "1"
}
```

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `node_id` | string | Yes | ID of the profile/page this plan belongs to |
| `node_type` | string | Yes | Type: `"profile"`, `"page"`, etc. |
| `title` | string | Yes | Plan display name |
| `price` | string | Yes | Price amount |
| `period_num` | string | Yes | Number of periods |
| `period` | string | Yes | Period unit: `"day"`, `"week"`, `"month"`, `"year"` |
| `custom_description` | string | No | Plan description |
| `plan_order` | string | No | Display order |

---

#### GET /monetization/monetization_plans/:id

Get a specific monetization plan by ID.

---

#### PUT /monetization/monetization_plans/:id

Update an existing monetization plan.

**Request Body:**
```json
{
  "title": "Updated Premium Tier",
  "price": "14.99",
  "period_num": "1",
  "period": "month",
  "custom_description": "Updated description",
  "plan_order": "1"
}
```

---

#### DELETE /monetization/monetization_plans/:id

Delete a monetization plan by ID.

---

## 4. Legacy OAuth API

**Base Path:** `/api/`

This is the OAuth 2.0-style authorization system for third-party developer apps. Apps are managed through the Developer Apps section of the platform.

### OAuth Flow

```
Step 1: Redirect user to authorization page
  GET /api/oauth?app_id=YOUR_APP_ID

Step 2: User logs in and grants permission
  System redirects to your app_redirect_url with ?auth_key=GENERATED_KEY

Step 3: Exchange auth_key for access_token
  POST /api/authorize

Step 4: Use access_token to fetch user data
  GET /api/get_user_info?access_token=TOKEN
```

### Endpoints

#### GET /api/oauth

Redirect the user here to begin the authorization flow. Displays a login/authorization page.

**Query Parameters:**
- `app_id` — Your application's auth ID (required)

If the user has previously authorized your app, they are automatically redirected with a new `auth_key`.

---

#### POST /api/authorize

Exchange an auth_key for an access_token.

**Request Body (form-encoded or JSON):**
```
app_id=YOUR_APP_ID
app_secret=YOUR_APP_SECRET
auth_key=KEY_FROM_REDIRECT
```

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `app_id` | string | Yes | Your application auth ID |
| `app_secret` | string | Yes | Your application secret |
| `auth_key` | string | Yes | The auth key from the redirect callback |

**Success Response:**
```json
{
  "access_token": "generated_access_token"
}
```

**Error Response:**
```json
{
  "error": true,
  "message": "Bad Request, invalid app_secret"
}
```

> Access tokens expire after **1 minute**. Request a new one for each API call by repeating the auth_key exchange.

---

#### GET /api/get_user_info

Retrieve the authorized user's profile information.

**Query Parameters:**
- `access_token` — Valid access token from `/api/authorize`

**Response:**
```json
{
  "user_info": {
    "user_id": "1",
    "user_name": "johndoe",
    "user_email": "john@example.com",
    "user_firstname": "John",
    "user_lastname": "Doe",
    "user_gender": "Male",
    "user_birthdate": "1990-01-15",
    "user_picture": "uploads/photos/picture.jpg",
    "user_cover": "uploads/photos/cover.jpg",
    "user_registered": "2025-01-01 00:00:00",
    "user_verified": "1",
    "user_relationship": "single",
    "user_biography": "About me text",
    "user_website": "https://example.com",
    "profile_picture": "https://yourdomain.com/content/uploads/photos/picture.jpg"
  }
}
```

---

## 5. AJAX Endpoints

AJAX endpoints are used internally by the web UI. They follow a standard pattern:

**Request Requirements:**
- `X-Requested-With: XMLHttpRequest` header (verified by `is_ajax()`)
- Active session cookies (verified by `user_access(true)`)
- POST method (unless otherwise noted)

**Response Format:**
```json
{
  "callback": "optional_js_callback()",
  "success": true,
  "message": "Optional message"
}
```

Or for errors:
```json
{
  "error": true,
  "message": "Error description"
}
```

### 5.1 Directory Structure

```
includes/ajax/
  core/         — 15 files — Authentication (signin, signup, activation, 2FA, password reset)
  data/         — 7 files  — Content loading, search, upload, deletion, reporting
  users/        — 29 files — Profile, settings, connections, notifications, photos
  posts/        — 21 files — Post CRUD, comments, reactions, sharing, stories
  chat/         — 7 files  — Messages, conversations, calls, live updates
  payments/     — 20 files — Payment gateway integrations (19 gateways)
  admin/        — 50 files — Full admin control panel operations
  modules/      — 7 files  — Page/group/event module management
  forums/       — 3 files  — Forum threads and replies
  albums/       — 2 files  — Photo album management
  ads/          — 2 files  — Ad campaigns and click tracking
  developers/   — 1 file   — OAuth app CRUD
  live/         — 1 file   — Live stream reactions
  monetization/ — 1 file   — Creator monetization features
  support/      — 1 file   — Support ticket management
```

### 5.2 Core — Authentication (`includes/ajax/core/`)

| File | Purpose | Key Parameters |
|------|---------|----------------|
| `signin.php` | User sign-in | `username_email`, `password`, `remember` |
| `signup.php` | User registration | `username`, `email`, `password`, `first_name`, `last_name`, `gender` |
| `signup_social.php` | Social login registration | `provider`, `social_id` |
| `activation_email.php` | Email verification | `code` |
| `activation_email_resend.php` | Resend email code | — |
| `activation_email_reset.php` | Change activation email | `email` |
| `activation_phone.php` | Phone verification | `code` |
| `activation_phone_resend.php` | Resend SMS code | — |
| `activation_phone_reset.php` | Change activation phone | `phone` |
| `forget_password.php` | Request password reset | `email` |
| `forget_password_confirm.php` | Confirm reset code | `code` |
| `forget_password_reset.php` | Set new password | `password`, `confirm_password` |
| `two_factor_authentication.php` | 2FA code verification | `code` |
| `contact.php` | Contact form | `subject`, `message` |
| `theme.php` | Toggle dark/light theme | `theme` |

### 5.3 Data — Content Loading (`includes/ajax/data/`)

| File | Purpose | Key Details |
|------|---------|-------------|
| `load.php` | Infinite scroll loading | `get` parameter with 50+ cases (see below) |
| `search.php` | Search content | `query`, `type` (users, posts, pages, groups, events, blogs) |
| `upload.php` | File upload | Multipart form data with security checks |
| `delete.php` | Delete content | Content type and ID |
| `report.php` | Report content | `id`, `handle`, `category`, `reason` |
| `live.php` | Live updates/notifications | Polls for new data |
| `reset.php` | Reset counters | `reset` parameter |

**load.php supported `get` values:**
- **Feed:** `newsfeed`, `popular`, `discover`, `saved`, `scheduled`, `memories`, `boosted`, `reels`, `watch`
- **Profile content:** `posts_profile`, `posts_page`, `posts_group`, `posts_event`, `blogs`
- **People:** `friends`, `followers`, `followings`, `subscribers`, `new_people`, `mutual_friends`
- **Collections:** `pages`, `groups`, `events`, `games`
- **Interactions:** `post_comments`, `photo_comments`, `comment_replies`, `post_reactions`, `photo_reactions`, `comment_reactions`
- **Search:** `search_posts`, `search_blogs`, `search_users`, `search_pages`, `search_groups`, `search_events`

### 5.4 Users — Profile & Settings (`includes/ajax/users/`)

| File | Purpose |
|------|---------|
| `settings.php` | User settings (account, basic, work, location, privacy, notifications, billing) |
| `information.php` | Update profile info (basic_info, relationship, languages, interests) |
| `image_change.php` | Upload new avatar/cover |
| `image_crop.php` | Crop avatar/cover |
| `image_delete.php` | Remove avatar/cover |
| `image_position.php` | Adjust image positioning |
| `addresses.php` | Manage addresses (add, edit, delete) |
| `verify.php` | Email/phone verification |
| `notifications.php` | Mark notifications read, update preferences |
| `push_notifications.php` | Push notification token management |
| `session.php` | Session management |
| `connect.php` | Social account linking |
| `autocomplete.php` | User search autocomplete suggestions |
| `mention.php` | @mention suggestions |
| `delete.php` | Account deletion |
| `login_as.php` | Admin login-as-user |
| `gifts.php` | Gift management |
| `merits.php` | Merit badges/achievements |
| `photos.php` | Photo gallery management |
| `orders.php` | Order management |
| `shopping.php` | Shopping cart operations |
| `withdraw.php` | Withdrawal requests |
| `popover.php` | Profile popover preview |
| `mutual_friends.php` | Get mutual connections |
| `switch.php` | Account switching |
| `started.php` | Getting started flow |
| `tagify.php` | Tag autocomplete |
| `invitations.php` | Invitation management |
| `location.php` | Update user location |

### 5.5 Posts — Content Management (`includes/ajax/posts/`)

| File | Purpose |
|------|---------|
| `post.php` | Create/edit/delete posts |
| `blog.php` | Blog post CRUD |
| `product.php` | Product listings |
| `course.php` | Course content |
| `job.php` | Job postings |
| `funding.php` | Funding campaigns |
| `offer.php` | Special offers |
| `story.php` | Temporary stories |
| `comment.php` | Comment add/edit/delete |
| `reaction.php` | Add/remove reactions |
| `share.php` | Share posts |
| `edit.php` | Edit content inline |
| `filter.php` | Filter posts by type |
| `publisher.php` | Publishing controls (schedule, draft, publish) |
| `scraper.php` | Extract link preview data |
| `lightbox.php` | Photo gallery lightbox |
| `who_reacts.php` | List who reacted |
| `who_shares.php` | List who shared |
| `who_donates.php` | List donors |
| `who_votes.php` | List poll voters |
| `who_reviews.php` | List product reviewers |

### 5.6 Chat (`includes/ajax/chat/`)

| File | Purpose |
|------|---------|
| `messages.php` | Fetch message history |
| `post.php` | Send a message |
| `conversation.php` | Create/delete conversations |
| `actions.php` | Typing indicators, read status |
| `call.php` | Voice/video call initiation |
| `live.php` | Real-time message polling |
| `product.php` | Product inquiries in chat |

### 5.7 Payments (`includes/ajax/payments/`)

Payment gateway integrations. Each file handles the payment flow for its gateway:

| File | Gateway |
|------|---------|
| `stripe.php` | Stripe |
| `paypal.php` | PayPal |
| `2checkout.php` | 2Checkout |
| `authorize.php` | Authorize.net |
| `coinbase.php` | Coinbase (Crypto) |
| `coinpayments.php` | CoinPayments (Multi-crypto) |
| `razorpay.php` | Razorpay |
| `paystack.php` | Paystack |
| `flutterwave.php` | Flutterwave |
| `myfatoorah.php` | MyFatoorah |
| `mercadopago.php` | MercadoPago |
| `cashfree.php` | Cashfree |
| `plisio.php` | Plisio (Crypto) |
| `shift4.php` | Shift4 |
| `verotel.php` | Verotel |
| `cash_on_delivery.php` | Cash on Delivery |
| `bank.php` | Bank Transfer |
| `wallet.php` | Internal Wallet |
| `trial.php` | Free Trial |

**Payment types supported by all gateways:** `packages` (subscriptions), `wallet` (balance top-up), `donate`, `subscribe`, `paid_post`, `movies`, `marketplace`

### 5.8 Admin (`includes/ajax/admin/`)

50 files covering all admin panel operations. Requires admin role (user_group = 1) or moderator with specific permissions.

Key admin endpoints include:
- **User management:** `users.php` (approve, ban, verify, delete)
- **Content moderation:** `posts.php`, `blogs.php`, `pages.php`, `groups.php`, `events.php`
- **System settings:** `settings.php`, `design.php`, `static.php`, `themes.php`
- **Moderation:** `delete.php`, `reports.php`, `blacklist.php`, `verify.php`
- **Reference data:** `countries.php`, `genders.php`, `currencies.php`, `languages.php`
- **Features:** `ads.php`, `announcements.php`, `emojis.php`, `stickers.php`, `reactions.php`
- **Finance:** `bank.php`, `withdraw.php`, `monetization.php`
- **Developer tools:** `developers.php`, `export.php`, `reset.php`, `test.php`

### 5.9 Other AJAX Directories

| Directory | Files | Purpose |
|-----------|-------|---------|
| `modules/` | 7 | Page/group/event module CRUD, reviews, sharing, member lists |
| `forums/` | 3 | `thread.php`, `reply.php`, `delete.php` — Forum management |
| `albums/` | 2 | `action.php`, `modal.php` — Photo album operations |
| `ads/` | 2 | `campaign.php`, `click.php` — Ad campaign management |
| `developers/` | 1 | `app.php` — OAuth developer app CRUD |
| `live/` | 1 | `reaction.php` — Live stream reactions |
| `monetization/` | 1 | `controller.php` — Creator monetization features |
| `support/` | 1 | `ticket.php` — Support ticket management |

---

## 6. WebSocket API

**Transport:** Socket.IO over Workerman (PHP)  
**Connection:** `wss://yourdomain.com:PORT?jwt=YOUR_JWT_TOKEN`

The WebSocket server handles real-time chat, presence, and voice/video calling.

### 6.1 Connection

```javascript
const socket = io('wss://yourdomain.com:PORT', {
  query: { jwt: 'YOUR_JWT_TOKEN' }
});
```

On successful connection, the server emits:
```javascript
socket.on('event_server_welcome', (data) => {
  // data.message = "Welcome, username!"
});
```

### 6.2 Room System

- **User room:** Each user automatically joins their own room (user ID). Used for multi-device sync.
- **Conversation room:** `conversation_{id}` — joined when opening a chat thread.

### 6.3 Client Events (emit from client)

#### Presence

| Event | Data | Description |
|-------|------|-------------|
| `event_client_ping` | — | Keep-alive heartbeat. Broadcasts online status to friends. |
| `event_client_chat_toggle` | `{ user_chat_enabled: 0\|1 }` | Toggle chat availability on/off |

#### Chat Threads

| Event | Data | Description |
|-------|------|-------------|
| `event_client_open_thread` | `{ conversation_id }` | Join a conversation room |
| `event_client_open_chatbox` | `{ conversation_id }` | Join room + broadcast to other user devices |
| `event_client_close_chatbox` | `{ conversation_id }` | Leave room + broadcast to other user devices |
| `event_client_delete_conversation` | `{ conversation_id }` | Delete conversation + broadcast + leave room |
| `event_client_leave_conversation` | `{ conversation_id }` | Leave group conversation + broadcast |
| `event_client_get_conversation` | `{ conversation_id }`, callback | Get conversation data (returns via callback) |

#### Messaging

| Event | Data | Description |
|-------|------|-------------|
| `event_client_send_message` | `{ conversation_id, message, photo, video, voice_note, recipients }`, callback | Send message. Returns conversation data via callback. |
| `event_client_typing` | `{ conversation_id, is_typing }` | Broadcast typing indicator |
| `event_client_seen` | `{ ids: [conversation_ids] }` | Mark conversations as seen |
| `event_client_color` | `{ conversation_id, color }` | Set conversation color theme |

#### Voice/Video Calls

| Event | Data | Description |
|-------|------|-------------|
| `event_client_create_call` | `{ type, id }`, callback | Initiate a call (`type`: "audio"/"video", `id`: recipient user ID). Returns call data via callback. |
| `event_client_answer_call` | `{ id }`, callback | Answer incoming call (`id`: call ID) |
| `event_client_decline_call` | `{ id }` | Decline incoming call |
| `event_client_cancel_call` | `{ id }` | Cancel outgoing call (caller) |
| `event_client_end_call` | `{ id }` | End active call (either party) |
| `event_client_update_call` | `{ id }` | Update call status |

### 6.4 Server Events (listen on client)

#### Presence

| Event | Data | Description |
|-------|------|-------------|
| `event_server_welcome` | `{ message }` | Connection acknowledgement |
| `event_server_user_online` | `{ user_id, user_fullname, user_name, user_picture, user_last_seen, user_is_online }` | Friend came online |
| `event_server_user_offline` | Same as above with `user_is_online: false` | Friend went offline |
| `event_server_chat_toggle` | `{ user_chat_enabled }` | Chat availability changed (multi-device sync) |
| `event_server_error` | `{ message, modal? }` | Error notification |

#### Messaging

| Event | Data | Description |
|-------|------|-------------|
| `event_server_message_received` | `{ conversation, last_message, is_me }` | New message received |
| `event_server_chatbox_opened` | `{ conversation_id }` | Chatbox opened on another device |
| `event_server_chatbox_closed` | `{ conversation_id }` | Chatbox closed on another device |
| `event_server_seen` | `{ conversation_id, seen_name_list }` | Messages marked as seen |
| `event_server_color` | `{ conversation_id, color }` | Conversation color changed |
| `event_server_delete_conversation` | `{ conversation_id }` | Conversation deleted |
| `event_server_leave_conversation` | `{ conversation_id }` | User left conversation |

#### Calls

| Event | Data | Description |
|-------|------|-------------|
| `event_server_call_received` | `{ call_id, ... }` | Incoming call |
| `event_server_call_answered` | `{ call_id, ... }` | Call was answered |
| `event_server_call_declined` | `{ call_id, ... }` | Call was declined |
| `event_server_call_canceled` | `{ call_id, ... }` | Call was canceled by caller |
| `event_server_call_ended` | `{ call_id, ... }` | Call ended |

---

## 7. Webhook Handlers

Payment gateway webhooks are located in `/webhooks/`. These are called by payment providers to confirm transactions.

### Server-to-Server Webhooks (with cryptographic verification)

| File | Gateway | Verification Method |
|------|---------|---------------------|
| `stripe_subscriptions.php` | Stripe | Stripe webhook signature (`HTTP_STRIPE_SIGNATURE` header) |
| `paypal_subscriptions.php` | PayPal | PayPal webhook signature verification via API |
| `mercadopago_callbak.php` | MercadoPago | Metadata and payment status validation |

### Client-Redirect Webhooks (session-based)

These are return URLs that users are redirected to after completing payment on the gateway's page:

| File | Gateway | Verification |
|------|---------|-------------|
| `stripe.php` | Stripe | Session-based + payment intent lookup |
| `paypal.php` | PayPal | `paymentId` + `PayerID` or `subscription_id` |
| `coinbase.php` | Coinbase | Hash validation against user session |
| `coinpayments.php` | CoinPayments | Transaction lookup |
| `flutterwave.php` | Flutterwave | `tx_ref` + `transaction_id` |
| `paystack.php` | Paystack | `reference` parameter |
| `cashfree.php` | Cashfree | `orderId` parameter |
| `myfatoorah.php` | MyFatoorah | Redirect validation |
| `epayco.php` | ePayco | Redirect validation |
| `mercadopago.php` | MercadoPago | Redirect validation |
| `plisio.php` | Plisio | Hash validation against user session |
| `verotel.php` | Verotel | Redirect validation |
| `moneypoolscash.php` | MoneyPoolsCash | Redirect validation |

### Supported Payment Actions

All webhooks handle these transaction types:
- `packages` — Subscription plans
- `wallet` — Wallet top-up
- `donate` — Donations
- `subscribe` — Creator subscriptions
- `paid_post` — Paid content access
- `movies` — Movie purchases
- `marketplace` — Product purchases

---

## 8. Error Handling

### REST API Exceptions

The REST API uses custom exception classes that map to HTTP status codes:

| Exception Class | HTTP Code | When Used |
|----------------|-----------|-----------|
| `BadRequestException` | 400 | Invalid or missing parameters |
| `AuthorizationException` | 403 | Insufficient permissions, demo account, disabled feature |
| `NoDataException` | 404 | Requested data not found |
| Generic `Exception` | 500 | Unexpected server errors |

### Demo Account Restrictions

The following REST API operations are blocked for demo accounts:
- `POST /user/connect`
- `POST /user/image_delete`
- `POST /user/delete`
- `POST /data/upload`
- `POST /data/delete`
- All monetization write operations (POST, PUT, DELETE)

---

## 9. Quick Start Examples

### 9.1 Complete Sign-In Flow (cURL)

**Step 1: Generate authentication headers**

```bash
API_KEY="your_api_key_here"
API_SECRET="your_api_secret_here"
TIMESTAMP=$(date +%s)
SIGNATURE=$(echo -n "$TIMESTAMP" | openssl dgst -sha256 -hmac "$API_SECRET" | awk '{print $2}')
BASE_URL="https://yourdomain.com/apis/php"
```

**Step 2: Sign in**

```bash
curl -X POST "$BASE_URL/auth/signin" \
  -H "Content-Type: application/json" \
  -H "X-API-Key: $API_KEY" \
  -H "X-Signature: $SIGNATURE" \
  -H "X-Timestamp: $TIMESTAMP" \
  -c cookies.txt \
  -d '{
    "username_email": "john@example.com",
    "password": "mypassword",
    "device_type": "A",
    "device_os_version": "14.0",
    "device_name": "API Client"
  }'
```

**Step 3: Use authenticated endpoints**

```bash
# Regenerate signature for each request (timestamp must be fresh)
TIMESTAMP=$(date +%s)
SIGNATURE=$(echo -n "$TIMESTAMP" | openssl dgst -sha256 -hmac "$API_SECRET" | awk '{print $2}')

# Get conversations
curl -X GET "$BASE_URL/chat/conversations?offset=0" \
  -H "X-API-Key: $API_KEY" \
  -H "X-Signature: $SIGNATURE" \
  -H "X-Timestamp: $TIMESTAMP" \
  -b cookies.txt
```

### 9.2 JavaScript (Fetch API)

```javascript
const API_KEY = 'your_api_key_here';
const API_SECRET = 'your_api_secret_here';
const BASE_URL = 'https://yourdomain.com/apis/php';

async function generateSignature(secret) {
  const timestamp = Math.floor(Date.now() / 1000).toString();
  const encoder = new TextEncoder();
  const key = await crypto.subtle.importKey(
    'raw', encoder.encode(secret),
    { name: 'HMAC', hash: 'SHA-256' }, false, ['sign']
  );
  const sig = await crypto.subtle.sign('HMAC', key, encoder.encode(timestamp));
  const signature = Array.from(new Uint8Array(sig))
    .map(b => b.toString(16).padStart(2, '0')).join('');
  return { timestamp, signature };
}

async function apiRequest(method, endpoint, body = null) {
  const { timestamp, signature } = await generateSignature(API_SECRET);
  const options = {
    method,
    headers: {
      'Content-Type': 'application/json',
      'X-API-Key': API_KEY,
      'X-Signature': signature,
      'X-Timestamp': timestamp,
    },
    credentials: 'include', // include cookies for session
  };
  if (body) options.body = JSON.stringify(body);
  const response = await fetch(`${BASE_URL}${endpoint}`, options);
  return response.json();
}

// Sign in
const loginResult = await apiRequest('POST', '/auth/signin', {
  username_email: 'john@example.com',
  password: 'mypassword',
  device_type: 'A',
  device_os_version: '14.0',
  device_name: 'Web Client'
});

// Get app settings (public, no session needed)
const settings = await apiRequest('GET', '/app/settings');

// Get conversations (requires session)
const conversations = await apiRequest('GET', '/chat/conversations?offset=0');

// Send a message
const message = await apiRequest('POST', '/chat/message', {
  conversation_id: '1',
  message: 'Hello from the API!'
});
```

### 9.3 Python

```python
import hmac
import hashlib
import time
import requests

API_KEY = 'your_api_key_here'
API_SECRET = 'your_api_secret_here'
BASE_URL = 'https://yourdomain.com/apis/php'

session = requests.Session()

def get_headers():
    timestamp = str(int(time.time()))
    signature = hmac.new(
        API_SECRET.encode(), timestamp.encode(), hashlib.sha256
    ).hexdigest()
    return {
        'Content-Type': 'application/json',
        'X-API-Key': API_KEY,
        'X-Signature': signature,
        'X-Timestamp': timestamp,
    }

# Sign in
response = session.post(f'{BASE_URL}/auth/signin', headers=get_headers(), json={
    'username_email': 'john@example.com',
    'password': 'mypassword',
    'device_type': 'A',
    'device_os_version': '14.0',
    'device_name': 'Python Client'
})
print(response.json())

# Get conversations (session cookies are automatically managed)
response = session.get(f'{BASE_URL}/chat/conversations?offset=0', headers=get_headers())
print(response.json())
```

### 9.4 Health Check

```bash
TIMESTAMP=$(date +%s)
SIGNATURE=$(echo -n "$TIMESTAMP" | openssl dgst -sha256 -hmac "$API_SECRET" | awk '{print $2}')

curl "$BASE_URL/ping" \
  -H "X-API-Key: $API_KEY" \
  -H "X-Signature: $SIGNATURE" \
  -H "X-Timestamp: $TIMESTAMP"

# Response: {"status":"success","message":"pong","timestamp":"2026-04-08 12:00:00"}
```

---

## Appendix: File Structure

```
sngine/
  api.php                          # Legacy OAuth API entry point
  apis/php/
    index.php                      # REST API entry point & bootstrap
    libs/Express.php               # Express-style PHP router
    utils/functions.php            # API helpers (auth, response, error)
    routes/
      core.php                     # /ping and error routes
      modules.php                  # Loads all module routers
    modules/
      auth/router.php + controller.php      # 12 routes
      app/router.php + controller.php       # 10 routes
      user/router.php + controller.php      # 4 routes
      data/router.php + controller.php      # 5 routes
      chat/router.php + controller.php      # 13 routes
      monetization/router.php + controller.php  # 5 routes
  includes/ajax/                   # 167 AJAX handler files
    core/ data/ users/ posts/ chat/ payments/ admin/
    modules/ forums/ albums/ ads/ developers/ live/ monetization/ support/
  sockets/php/
    socket.php                     # WebSocket event handlers (Workerman)
    loader.php                     # Socket bootstrap
  webhooks/                        # 16 payment gateway webhook handlers
```
