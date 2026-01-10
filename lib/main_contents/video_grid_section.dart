import 'package:flutter/material.dart';
import 'package:youtube_desktop_app_ui/shared_components/video_card.dart';

class VideoGridSection extends StatelessWidget {
  final String title;
  const VideoGridSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1.3,
          ),
          itemCount: 3,
          itemBuilder: (context, index) => const VideoCard(
            title: "Exploring Flutter Desktop",
            thumbnail: "https://picsum.photos/seed/tech/400/225",
            duration: "15:04",
            channel: "Google Devs",
            views: "100K views",
            time: "1 hour ago",
          ),
        ),
      ],
    );
  }
}


