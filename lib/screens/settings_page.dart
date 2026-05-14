import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Settings', style: TextStyle(fontWeight: FontWeight.w600)),
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Text(
          'App configuration options will be placed here.',
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
      ),
    );
  }
}
