# Flutter Firebase E-Commerce — User App

A fully functional cross-platform e-commerce shopping app built with **Flutter** and **Firebase**. Users can browse products, manage their cart, check out, track orders, and manage their profile — all backed by a real-time Firestore database.

This is the **user-facing app**; it pairs with a companion [Admin App](#) for managing products  orders  and inventory.

---

## ✨ Features

- 🔐 **Authentication** — Email/password sign up & login, with Google Sign-In
- 🛍️ **Product Catalog** — Browse products by category with images, pricing, and ratings
- 🔍 **Search** — Find products quickly across the catalog
- 🛒 **Cart Management** — Add, update quantities, and remove items, synced live with Firestore
- 💳 **Checkout** — Place orders with delivery address selection
- 📦 **Order Tracking** — View order history and real-time order status updates
- ❤️ **Wishlist** — Save favorite products for later
- 📍 **Address Management** — Add, edit, and select delivery addresses
- 👤 **User Profile** — Edit profile details and upload a profile picture (camera or gallery)
- 📱 **Responsive UI** — Optimized for portrait mode on Android

---

## 🛠️ Tech Stack

| Category | Technology |
|---|---|
| Framework | Flutter (Dart) |
| State Management | Provider |
| Backend | Firebase |
| Database | Cloud Firestore |
| Authentication | Firebase Auth (Email/Password, Google Sign-In) |
| Storage | Firebase Storage (product & profile images) |
| Architecture | Provider-based state management with a clean, modular folder structure |

---

## 📂 Project Structure

```
lib/
├── models/          # Data models (Product, Order, User, Address, etc.)
├── providers/        # Provider classes for state management
├── screens/          # App screens (auth, home, cart, checkout, profile, etc.)
├── widgets/          # Reusable UI components
├── services/          # Firebase service classes (auth, firestore, storage)
└── main.dart         
```

---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed
- A [Firebase](https://firebase.google.com/) project set up
- Android Studio or VS Code with the Flutter/Dart plugins

### Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/Monam1083/flutter-firebase-ecommerce-user.git
   cd flutter-firebase-ecommerce-user
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure Firebase**
   - Create a Firebase project at the [Firebase Console](https://console.firebase.google.com/)
   - Enable **Authentication** (Email/Password and Google Sign-In)
   - Enable **Cloud Firestore** and **Firebase Storage**
   - Add an Android app to your Firebase project and download `google-services.json`
   - Place `google-services.json` in `android/app/`

4. **Run the app**
   ```bash
   flutter run
   ```

---

## 📱 Platform Support

Currently configured and tested for **Android** (portrait mode only). iOS configuration is not included.

---

## 🔗 Related

- [Admin App](#) — Companion app for managing products, orders, and inventory

---

## 📄 License

This project is open source and available for learning and personal use.
