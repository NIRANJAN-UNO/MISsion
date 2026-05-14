import 'package:flutter/material.dart';
import '../widgets/compact_analysis_card.dart';

class StudentAnalysisPage extends StatelessWidget {
  const StudentAnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Student Analysis', style: TextStyle(fontWeight: FontWeight.w600)),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 2.5,
                children: [
                  CompactAnalysisCard(
                    title: 'CGPA Analysis',
                    subtitle: 'Grade distributions & trends.',
                    icon: Icons.trending_up,
                    color: Colors.blue.shade50,
                    iconColor: Colors.blue.shade700,
                  ),
                  CompactAnalysisCard(
                    title: 'Attendance Analysis',
                    subtitle: 'Monitor student regularity.',
                    icon: Icons.event_available,
                    color: Colors.green.shade50,
                    iconColor: Colors.green.shade700,
                  ),
                  CompactAnalysisCard(
                    title: 'Grade History',
                    subtitle: 'View historical performance.',
                    icon: Icons.history_edu,
                    color: Colors.orange.shade50,
                    iconColor: Colors.orange.shade700,
                  ),
                  CompactAnalysisCard(
                    title: 'Proctor Analysis',
                    subtitle: 'Mentorship mapping details.',
                    icon: Icons.assignment_ind,
                    color: Colors.purple.shade50,
                    iconColor: Colors.purple.shade700,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
