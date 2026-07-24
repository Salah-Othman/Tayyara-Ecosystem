# AGENTS.md

## Project

Tayyara (طيارة) — local delivery/errand ecosystem for Abu Qurqas, Egypt. Monorepo of 4 Flutter apps sharing a single Firebase project (`tayyara-ecosystem`).

See `TAYYARA_DETAILS.md` for full design, order lifecycle, and sprint plan.

## Structure

```
tayyara_customer_app/       # End-user ordering (Android/iOS)
tayyara_driver_app/         # Delivery driver (Android/iOS)
tayyara_merchant_app/       # Store owner order management (Android/iOS)
tayyara_admin_dashboard/    # Admin panel (Flutter Web)
tayyara_core/               # Shared core modules (Firebase, models, theme, widgets)
```

## Tech Stack

- **Flutter** — Feature-First MVVM folder structure in each app
- **State Management** — flutter_bloc / Cubit (NOT Riverpod, NOT Provider)
- **Backend** — Firebase: Firestore, Auth (Phone OTP), Storage, FCM
- **Secure Storage** — flutter_secure_storage for tokens
- **Payments** — COD only (no online payment in MVP)

## Conventions

- Each app follows Feature-First MVVM: `lib/features/<feature>/` with `presentation/`, `data/`, `domain/` layers
- Cubit pattern for state management across all apps
- Stream-based Firestore listeners for real-time data (not polling)
- Shared core modules across all 4 apps: Firebase setup, secure storage, core models, theme, common widgets
- Arabic + English UI support

## Collections (Firestore)

`users`, `villages`, `stores`, `products`, `orders`

## Order Lifecycle

```
placed → accepted (merchant) → ready_for_pickup → out_for_delivery (driver) → delivered
```

## Notes

- No code exists yet — repo is in planning/pre-implementation stage
- Delivery fees are set per-village by admin, fetched dynamically at checkout
- Village selection is a core UX step (dropdown in customer app)
- Custom errands/prescriptions supported via image upload to Firebase Storage
