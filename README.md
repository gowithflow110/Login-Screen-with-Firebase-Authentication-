✨ Login Screen with Firebase Authentication (Flutter)
A clean and modern Flutter app featuring animated Google Sign-In and seamless Firebase authentication flow.

🧭 Features
🔐 Secure Google Sign-In integration with Firebase Authentication
🧠 Animated "Continue with Google" button using scaling effect
🎨 Unified design with Google Fonts and rounded UI elements
🚀 Smooth navigation to Dashboard screen on successful login
✅ Proper error handling and loading state management
🖼️ Preview
(Replace with actual screenshots)

Sign-In Screen with animated button
Dashboard screen post-login
📁 Project Structure
lib/
├── main.dart
├── screens/
│   ├── sign_in_screen.dart     # Login screen with animated Google button
│   └── dashboard_screen.dart   # Post-login dashboard placeholder
assets/
├── google_logo.png              # Google logo (circular "G")
├── cv_illustration.png          # App illustration image
🛠️ Getting Started
1. Clone the Project
   git clone https://github.com/gowithflow110/Login-Screen-with-Firebase-Authentication-.git
   cd Login-Screen-with-Firebase-Authentication-
2. Install Dependencies
   flutter pub get
3. Firebase Setup
   Go to the Firebase Console
   Create a new Firebase project
   Enable Google Sign-In under Authentication → Sign-in methods (Google) ([github.com][1], [firebase.google.com][2], [github.com][3], [firebaseopensource.com][4])
   Add an Android or iOS app to the project
   Download google-services.json and place it inside android/app/
   Initialize Firebase.initializeApp() in your main.dart
4. Configure Assets
   Ensure your pubspec.yaml includes:

flutter:
assets:
- assets/google_logo.png
- assets/cv_illustration.png
📦 Dependencies
dependencies:
flutter:
sdk: flutter
firebase_core: ^latest
firebase_auth: ^latest
google_sign_in: ^latest
google_fonts: ^latest
(Replace ^latest with the actual versions from pub.dev)

🔑 Authentication Flow
User taps the animated "Continue with Google" button
Google account picker launches
Firebase authenticates the selected account
If successful → Navigate to DashboardScreen
If cancelled or failed → Animation resumes and error SnackBar is shown
🖌️ Custom Google Button UI
Button height: 82px
Background color: #4285F4
Rounded shape with border-radius: 30px
Floating Google “G” logo positioned on top
Text padded slightly downward for accurate alignment
🚀 Future Enhancements
✅ Voice-based CV generation in dashboard
✅ User session management using Shared Preferences
✅ Dark mode theme support
✅ Expand Dashboard with user profile and CV history
🧪 Error Handling
When an error occurs during sign-in:

Animation restarts
A SnackBar appears with a failure message
Errors logged in debug console
📄 Licensing
This project is licensed under the MIT License — see the LICENSE file for details.

💡 Contributing
Contributions are welcome! Feel free to:

Open issues
Submit pull requests
Suggest new features
🙌 Credits
Developed with ❤ by Muhammad Bilal (gowithflow110)