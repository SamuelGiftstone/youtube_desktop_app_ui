// lib/widgets/playlist_grid.dart
import 'package:flutter/material.dart';
import 'package:youtube_desktop_app_ui/shared_components/playlist_card.dart';

class PlaylistGrid extends StatelessWidget {
  const PlaylistGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: const [
        PlaylistCard(title: "Mixes", count: "50+", color: Colors.blue),
        PlaylistCard(title: "Coding", count: "12", color: Colors.orange),
        PlaylistCard(title: "Gaming", count: "24", color: Colors.purple),
        PlaylistCard(title: "Music", count: "100", color: Colors.green),
      ],
    );
  }
}


