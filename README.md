
# 🚀 CVGenerator Flutter App

A sleek Flutter app to create CVs with **Google Firebase Authentication** seamlessly integrated.

---

## ✨ Features

* 🔐 **Firebase Authentication** with Google Sign-In
* 🔄 **Reactive AuthGate** widget managing navigation based on auth state
* ⏳ **Splash Screen** while loading auth status
* 📄 **Dashboard (CVFormScreen)** accessible only when signed in
* 🔓 **Sign Out** button on Dashboard for easy logout

---

## 🗂️ Project Structure

* `main.dart` — 🚀 Initializes Firebase and launches the app
* `AuthGate` — 🚦 Listens to auth state changes and routes to correct screen
* `SplashLoginScreen` — ⏳ Shows loading while Firebase initializes/auth state loads
* `SignInScreen` — 🔑 Login screen for unauthenticated users
* `CVFormScreen` — 📋 Main dashboard; includes a logout button

---

## ⚙️ How it Works

1. **Firebase Initialization**
   App initializes Firebase on startup (`main()`).

2. **AuthGate Widget**

  * Uses `StreamBuilder` listening to `authStateChanges()`
  * Shows:

    * ⏳ SplashLoginScreen while waiting
    * 🔐 SignInScreen if no user logged in
    * 🎉 CVFormScreen when authenticated

3. **User Status Debugging**

  * Logs user email or "No user" status in console on each build

4. **Sign Out**

  * Logout button in `CVFormScreen` AppBar
  * Calls `FirebaseAuth.instance.signOut()`
  * `AuthGate` automatically navigates to SignInScreen

---

## 🧪 How to Test

* To simulate logged-out state, call:

  ```dart
  await FirebaseAuth.instance.signOut();
  ```

  (Can be temporarily added in `main()`.)

* Use the logout button on dashboard to sign out.

---

## 📦 Dependencies

* `firebase_core`
* `firebase_auth`
* `google_fonts`
* Flutter SDK (Material3 enabled)

---

## 🔄 UI Flow

```plaintext
⏳ SplashLoginScreen
      ↓
🔐 SignInScreen (if NOT logged in)
      ↓
🎉 CVFormScreen (dashboard, with sign out button)
```


