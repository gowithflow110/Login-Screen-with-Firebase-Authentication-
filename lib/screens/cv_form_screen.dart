import 'package:flutter/material.dart';

class CVFormScreen extends StatelessWidget {
  const CVFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CVFormScreen'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text('Welcome to your Dashboard!'),
      ),
    );
  }
}
