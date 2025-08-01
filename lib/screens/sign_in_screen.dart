import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  Future<void> _handleGoogleSignIn() async {
    try {
      await _googleSignIn.signOut(); // Force account picker

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return;

      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);

      Navigator.pushReplacementNamed(context, '/dashboard');
    } catch (e) {
      debugPrint('Google Sign-In Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Sign-in failed. Please try again.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // ✅ White background
      body: SafeArea(
        child: Column(
          children: [
           // const Spacer(),
            Image.asset(
              'assets/cv_illustration.png',
              height: 400,
            ),
            const SizedBox(height: 34),
            const Text(
              'Voice CV Generator',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Generate a job-ready CV in seconds',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: ElevatedButton.icon(
                onPressed: _handleGoogleSignIn,
                icon: Image.asset(
                  'assets/google_logo.png',
                  height: 54,
                  width: 54,
                ),
                label: const Text(
                  'Continue with Google',
                  style: TextStyle(fontSize: 23),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0078D7),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 92),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(48),
                  ),
                  elevation: 4,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
