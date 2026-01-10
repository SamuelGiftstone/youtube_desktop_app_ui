// lib/widgets/playlist_card.dart
import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
  final String title;
  final String count;
  final Color color;

  const PlaylistCard({super.key, required this.title, required this.count, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.playlist_play, color: color),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
          Text("$count videos", style: const TextStyle(fontSize: 10, color: Colors.white54)),
        ],
      ),
    );
  }
}
