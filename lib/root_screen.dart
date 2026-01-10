import 'package:flutter/material.dart';
import 'package:youtube_desktop_app_ui/main_contents/home_view.dart';
import 'package:youtube_desktop_app_ui/navigation/sidebar.dart';
import 'window_title_bar.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  // Logic to switch between views can be added here later
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const WindowTitleBar(), // Custom bitsdojo titlebar at the very top
          Expanded(
            child: Row(
              children: [
                const Sidebar(), // Your navigation sidebar
                const VerticalDivider(width: 1, color: Colors.white10),
                const Expanded(
                  child: HomeView(), // The main scrollable content
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


