import 'package:flutter/material.dart';
import 'overview_page.dart';
import 'student_analysis_page.dart';
import 'faculty_management_page.dart';
import 'spotlight_page.dart';
import 'settings_page.dart';
import 'ai_assistant_page.dart';

class DashboardLayout extends StatefulWidget {
  const DashboardLayout({super.key});

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const OverviewPage(key: ValueKey(0)),
    const StudentAnalysisPage(key: ValueKey(1)),
    const FacultyManagementPage(key: ValueKey(2)),
    const SpotlightPage(key: ValueKey(3)),
    const AiAssistantPage(key: ValueKey(4)),
    const SettingsPage(key: ValueKey(5)),
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(right: BorderSide(color: Colors.grey.shade200)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
                  child: Row(
                    children: [
                      Icon(Icons.account_balance, color: colorScheme.primary, size: 28),
                      const SizedBox(width: 12),
                      Text(
                        'MISsion',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: colorScheme.primary,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),
                _buildNavItem(0, Icons.dashboard_outlined, "Overview"),
                _buildNavItem(1, Icons.analytics_outlined, "Student Analysis"),
                _buildNavItem(2, Icons.people_outline, "Faculty Management"),
                _buildNavItem(3, Icons.stars_outlined, "Spotlight"),
                _buildNavItem(4, Icons.smart_toy_outlined, "AI Assistant"),
                const Spacer(),
                _buildNavItem(5, Icons.settings_outlined, "Settings"),
                const SizedBox(height: 24),
              ],
            ),
          ),
          // Main Content View with Slide/Fade Transition
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, 0.05),
                    end: Offset.zero,
                  ).animate(animation),
                  child: FadeTransition(
                    opacity: animation,
                    child: child,
                  ),
                );
              },
              child: _pages[_selectedIndex],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String title) {
    final isSelected = _selectedIndex == index;
    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? colorScheme.primary.withOpacity(0.08) : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? colorScheme.primary : Colors.grey.shade600,
              size: 20,
            ),
            const SizedBox(width: 14),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                color: isSelected ? colorScheme.primary : Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
