import 'package:flutter/material.dart';

class ChannelItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final bool isLive;

  const ChannelItem({
    super.key, 
    required this.name, 
    required this.imageUrl, 
    this.isLive = false
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 14,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(fontSize: 14, color: Colors.white70),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (isLive)
            Container(
              width: 6,
              height: 6,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
    );
  }
}


