# Tayyara Ecosystem - Complete Details

## Project Overview

**Tayyara** is a local delivery/errand ecosystem for Abu Qurqas, Egypt. It consists of **4 Flutter apps** (3 mobile + 1 web dashboard) sharing a single Firebase project, enabling fast electronic delivery services between the town center and surrounding villages.

- **Project Name:** Tayyara (طيارة)
- **Geographic Scope:** Abu Qurqas center & villages (Itleedem, Beni Obeid, Geris, etc.)
- **Tech Stack:** Flutter | Feature-First MVVM | Cubit (flutter_bloc) | Firebase
- **Version:** v2.0 (Final MVP Scope)

---

## Architecture & Tech Stack

| Component | Technology |
|-----------|-----------|
| **Framework** | Flutter |
| **Pattern** | Feature-First MVVM |
| **State Management** | flutter_bloc / Cubit |
| **Secure Storage** | flutter_secure_storage |
| **General Preferences** | shared_preferences |
| **Backend & Realtime** | Cloud Firestore |
| **Authentication** | Firebase Auth (Phone OTP) |
| **File Storage** | Firebase Storage |
| **Notifications** | Firebase Cloud Messaging (FCM) |
| **Hosting** | Firebase Hosting |

---

## Monorepo Structure

```
tayyara_ecosystem/
├── tayyara_customer_app/       # End-user ordering app (Android/iOS)
├── tayyara_driver_app/         # Delivery driver app (Android/iOS)
├── tayyara_merchant_app/       # Store owner order management (Android/iOS)
└── tayyara_admin_dashboard/    # Admin panel (Flutter Web)
```

---

## User Roles & Responsibilities

| Role | Description |
|------|-------------|
| **Customer** | Browse stores, select village/address, place orders (incl. custom errands/prescriptions), pay COD, track orders in real-time |
| **Driver** | Receive delivery notifications, accept orders, update status through delivery, receive cash from customer |
| **Merchant** | Accept incoming orders, prepare them, mark as ready for pickup |
| **Admin** | Manage villages, stores, products, set delivery fees per village, monitor live orders |

---

## Firebase Architecture

- **Single Firebase Project:** `tayyara-ecosystem`
- **Linked Apps:** 4 apps (Android, iOS, Web) via FlutterFire CLI
- **Core Firestore Collections:** `users`, `villages`, `stores`, `products`, `orders`

---

## Key Objectives

1. **Launch MVP in 4 weeks** - lightweight, fast field-testable version
2. **Connect villages to center** - facilitate order/prescription transport
3. **High security & efficiency** - flutter_secure_storage for tokens, Cloud Firestore for real-time speed

---

## MVP Feature Scope

### A. Auth & Location Engine
- **Firebase Phone Auth:** Login via mobile number with OTP
- **Secure Token Storage:** flutter_encrypted session data
- **Village Selector:** Dropdown list for villages with delivery fee calculation

### B. Stores Catalog
- **Categories:** Restaurants, Pharmacies, Supermarkets, Produce, Custom Errands
- **Store Page:** Display store status, products in sub-categories

### C. Custom Errands & Prescriptions
- **Image Upload:** Capture prescription/shopping list photo → Firebase Storage
- **Free Text Description:** Write details, specify pickup location

### D. Cart & Dynamic Pricing
- **Cart Cubit:** Add/edit items, calculate totals
- **Dynamic Delivery Fees:** Auto-calculated based on selected village from database
- **Payment:** Cash on Delivery (COD) only

### E. Realtime Tracking & FCM
- **Live Order Updates:** Stream-based Firestore listening for status changes
- **Push Notifications:** Alert customers via FCM on status updates

---

## Order Lifecycle

```
placed → accepted (merchant) → ready_for_pickup → out_for_delivery (driver) → delivered
```

---

## Master Plan - 4 Phases

### Phase 1: Foundation & Setup (Week 1)
- Create 4 projects under `tayyara_ecosystem`
- Set up Feature-First MVVM folder structure in each project
- Create single Firebase project `tayyara-ecosystem`
- Link all 4 apps via FlutterFire CLI
- Design core Firestore collections
- Build Shared Core: SecureStorageService, Theme, Basic Models (User, Order)

### Phase 2: Order Engine - Customer App & Admin Dashboard (Weeks 2-3)

**Admin Dashboard (Flutter Web):**
- Admin login screen
- Villages Management (Abu Qurqas villages + delivery fees per village)
- Stores Management (cafes, pharmacies, supermarkets + menus/products)
- Live Orders Dashboard (real-time Firestore listener)

**Customer App:**
- Auth Module (Firebase Phone Auth)
- Location Module (village selection + home details)
- Home & Stores display
- Custom Order/Prescription (photo capture + Firebase Storage)
- Cart & Checkout (dynamic delivery fee + Firestore submission)

### Phase 3: Operations & Delivery - Merchant & Driver Apps (Week 4)

**Merchant App:**
- Stream orders by storeId
- FCM push notifications on new orders
- Accept → Prepare → Ready for Pickup workflow

**Driver App:**
- Display "Ready for Pickup" orders
- Show store location + customer address
- Out for Delivery → Delivered (with cash collection)

### Phase 4: Testing, Security & Launch (Week 5)
- Firestore Security Rules (customer sees only own orders, merchant only their store)
- Field testing (real orders, weak internet, Geolocator testing)
- App Icons & Splash Screens
- Deploy to Google Play / App Store
- Host admin dashboard on Firebase Hosting

---

## Sprint Roadmap

| Sprint | Focus |
|--------|-------|
| **Sprint 1** | Architecture, Firebase Setup, Secure Storage & Phone Auth |
| **Sprint 2** | Home Screen, Store Catalog & Products UI |
| **Sprint 3** | Custom Errands, Dynamic Village Delivery Fees & Cart |
| **Sprint 4** | Realtime Firestore Tracking, FCM Notifications & Polish |

---

## Shared Core Modules (Code Sharing)

Across all 4 apps, the following are shared to avoid duplication:
- Firebase setup (Auth, Firestore, Storage, FCM)
- flutter_secure_storage for token management
- Core Models (User, Order, Village, Store, Product)
- Theme configuration
- Common widgets and utilities

---

## Delivery Fees

- Set per-village by Admin in the dashboard
- Dynamically fetched from Firestore when customer selects their village
- Added to order total at checkout

---

## Payments

- **Cash on Delivery (COD) only** - no online payment integration in MVP

---

## Dev Conventions

- Feature-First folder structure in each app
- Cubit pattern for state management
- Stream-based Firestore listeners for real-time data
- Arabic + English UI support
