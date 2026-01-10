import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:youtube_desktop_app_ui/model/app_theme.dart';
import 'package:youtube_desktop_app_ui/navigation/nav_item.dart';


class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      color: AppTheme.sidebarColor,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // YouTube Logo Area
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              children: [
                const Icon(PhosphorIconsFill.youtubeLogo, color: AppTheme.accentRed, size: 32),
                const SizedBox(width: 8),
                Text(
                  "YouTube",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1,
                  ),
                ),
              ],
            ),
          ),
          
          Expanded(
            child: ListView(
              children: [
                _buildSectionTitle("Menu"),
                NavItem(icon: PhosphorIconsRegular.house, label: "Home", isActive: true, onTap: () {}),
                NavItem(icon: PhosphorIconsRegular.fire, label: "Trending", onTap: () {}),
                NavItem(icon: PhosphorIconsRegular.youtubeLogo, label: "Subscriptions", onTap: () {}),
                
                const Divider(height: 40, color: Colors.white12),
                
                _buildSectionTitle("Library"),
                NavItem(icon: PhosphorIconsRegular.clockCounterClockwise, label: "History", onTap: () {}),
                NavItem(icon: PhosphorIconsRegular.clock, label: "Watch Later", onTap: () {}),
                NavItem(icon: PhosphorIconsRegular.thumbsUp, label: "Liked Videos", onTap: () {}),
                NavItem(icon: PhosphorIconsRegular.playlist, label: "Your Playlists", onTap: () {}),
                
                const Divider(height: 40, color: Colors.white12),
                
                _buildSectionTitle("Subscribed Channels"),
                _buildChannelItem("Wanderlust", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKdm4AllnTCthF1nTUjLjy8ujsutOLeesSBw&s"),
                _buildChannelItem("All Good", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJzG2ZkS0-GgI3vDbjWAjDjCf727IfircqbA&s"),
                _buildChannelItem("Food Vlog", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ8b4W4vtTawcbl1plfYzSh7UqCxq9CILNBw&s"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 12, top: 10),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(color: AppTheme.accentRed, fontWeight: FontWeight.bold, fontSize: 12, letterSpacing: 1.2),
      ),
    );
  }

  Widget _buildChannelItem(String name, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(radius: 14, backgroundImage: NetworkImage(imageUrl)),
          const SizedBox(width: 12),
          Expanded(child: Text(name, style: const TextStyle(fontSize: 14))),
          Container(width: 6, height: 6, decoration: const BoxDecoration(color: AppTheme.accentRed, shape: BoxShape.circle)),
        ],
      ),
    );
  }
}


