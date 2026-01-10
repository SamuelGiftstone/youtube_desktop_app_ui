import 'package:flutter/material.dart';
import 'home_view.dart';

class ContentWrapper extends StatelessWidget {
  final int selectedIndex;

  const ContentWrapper({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    // In a real app, you might use a PageView or IndexedStack
    switch (selectedIndex) {
      case 0:
        return const HomeView();
      case 1:
        return const Center(child: Text("Trending Feed Placeholder"));
      default:
        return const HomeView();
    }
  }
}


