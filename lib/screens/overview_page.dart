import 'package:flutter/material.dart';
import '../widgets/stat_card.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Department Overview', style: TextStyle(fontWeight: FontWeight.w600)),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'A high-level summary of the MIS Department data.',
              style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.8,
                children: [
                  StatCard(title: 'Total Students', value: '1,245', icon: Icons.school, color: Colors.blue),
                  StatCard(title: 'Active Faculty', value: '42', icon: Icons.person_pin_circle, color: Colors.teal),
                  StatCard(title: 'Alumni Network', value: '3,800+', icon: Icons.workspace_premium, color: Colors.amber.shade700),
                  StatCard(title: 'Rank Holders', value: '15', subtitle: 'This year', icon: Icons.military_tech, color: Colors.orange),
                  StatCard(title: 'Defaulters', value: '87', subtitle: 'Attendance < 75%', icon: Icons.warning_amber_rounded, color: Colors.red),
                  StatCard(title: 'Debarred', value: '3', subtitle: 'Due to FA/Arrears', icon: Icons.block, color: Colors.red.shade900),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
