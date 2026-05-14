import 'package:flutter/material.dart';

class FacultyManagementPage extends StatelessWidget {
  const FacultyManagementPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Faculty Management', style: TextStyle(fontWeight: FontWeight.w600)),
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Text(
          'Faculty mapping and details will appear here.',
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
      ),
    );
  }
}
