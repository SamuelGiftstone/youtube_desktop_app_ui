import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:youtube_desktop_app_ui/model/app_theme.dart';
import 'root_screen.dart';

void main() {
  runApp(const YouTubeDesktop());

  // Configure bitsdojo_window
  doWhenWindowReady(() {
    final initialSize = Size(1000, 600);
    appWindow.minSize = Size(1000, 600);
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.title = "YouTube Redesign";
    appWindow.show();
  });
}

class YouTubeDesktop extends StatelessWidget {
  const YouTubeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YouTube Desktop',
      theme: AppTheme.darkTheme,
      home: const RootScreen(),
    );
  }
}

