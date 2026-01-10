import 'package:flutter/material.dart';

class ShortsVideoCard extends StatelessWidget {
  final String title;
  final String thumbnail;
  final String duration;
  final String channel;
  final String views;
  final String time;

  const ShortsVideoCard({
    super.key,
    required this.title,
    required this.thumbnail,
    required this.duration,
    required this.channel,
    required this.views,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate aspect ratio height dynamically based on available width
        // Standard YouTube ratio is 16/9
        double thumbnailHeight = constraints.maxWidth * (9 / 16);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Prevents vertical flex issues
          children: [
            // Thumbnail with fixed Aspect Ratio to prevent height jumping
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                children: [
                  Image.network(
                    thumbnail,
                    height: thumbnailHeight,
                    width: constraints.maxWidth,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        duration,
                        style: const TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            // Title - Key to preventing flex errors
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
                height: 1.2, // Tighter line height for small screens
              ),
            ),
            const SizedBox(height: 4),
            // Metadata - Using Flexible to ensure text wraps or cuts off smoothly
            Flexible(
              child: Text(
                "$channel • $views • $time",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 11,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}


