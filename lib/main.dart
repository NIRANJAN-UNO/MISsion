import 'package:flutter/material.dart';
import 'screens/dashboard_layout.dart';

void main() {
  runApp(const MissionApp());
}

class MissionApp extends StatelessWidget {
  const MissionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MISsion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1B3B6F), // Deep navy
          background: const Color(0xFFF8F9FA), // Soft off-white
          surface: Colors.white,
        ),
        useMaterial3: true,
        fontFamily: 'Segoe UI',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: Color(0xFF1B3B6F),
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
      ),
      home: const DashboardLayout(),
    );
  }
}
