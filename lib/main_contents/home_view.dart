import 'package:flutter/material.dart';
import 'package:youtube_desktop_app_ui/main_contents/search_header.dart';
import 'package:youtube_desktop_app_ui/shared_components/shorts_video_card.dart';
import 'package:youtube_desktop_app_ui/shared_components/video_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  // 1. Recommendations Data
  static const List<Map<String, String>> recommendations = [
    {"title": "Can a Professional Photographer spot the difference?", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIccKW4Mh2lawEsauh4_Gb16KZBrNANFkSag&s", "duration": "8:32", "channel": "Peter McKinnon", "views": "1.2M views", "time": "2 days ago"},
    {"title": "The Art of Minimalist Coding", "thumb": "https://i.ytimg.com/vi/c-iE-PS_P6c/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAvfMKo3ZDaybYWlc817hD86XQiZQ", "duration": "12:45", "channel": "Code Aesthetics", "views": "450K views", "time": "5 hours ago"},
    {"title": "Building the Ultimate Workspace", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7d7QnvwlVb2jgd-ElG5YZnzih8vlU5f0a0A&s", "duration": "15:10", "channel": "Tech Setup", "views": "890K views", "time": "1 week ago"},
    {"title": "Flutter Desktop vs Electron", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaiX1WPGb4efaS7YSkScg12ujEhhFaBxOQ4g&s", "duration": "22:01", "channel": "Google Devs", "views": "150K views", "time": "3 days ago"},
    {"title": "Team meta plans on building a friendly environment", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_tMUCJ4ee4lMw9qv0JkGyrfssYWhILttYSg&s", "duration": "8:32", "channel": "Peter McKinnon", "views": "1.2M views", "time": "2 days ago"},
    {"title": "Video editing with After Effect", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFCG9gcpiykEvRigzfc6D_u-TeBJ6wZbbNzg&s", "duration": "12:45", "channel": "Code Aesthetics", "views": "450K views", "time": "5 hours ago"},
  ];

  // 2. Watching Data
  static const List<Map<String, String>> watchingData = [
    {"title": "Lofi Hip Hop Radio - Beats to Study", "thumb": "https://picsum.photos/seed/w1/400/225", "duration": "LIVE", "channel": "Lofi Girl", "views": "45K watching", "time": "Live"},
    {"title": "GTA VI - Official Trailer 1", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR54QFT3MjfXJ3l2u-tBvMGYO1H-JBnk0E16Q&s", "duration": "1:31", "channel": "Rockstar Games", "views": "210M views", "time": "1 year ago"},
    {"title": "SpaceX Starship Flight Test", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiiuVlEU8SDrDmwXEDvInCyU57IMqXaA8GaA&s", "duration": "45:00", "channel": "SpaceX", "views": "5M views", "time": "2 days ago"},
    {"title": "Interstellar Soundtrack - Hans Zimmer", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuT9gLpSy820-__etGWIVGo7vbrksbVlBGEQ&s", "duration": "3:00:00", "channel": "WaterTower Music", "views": "12M views", "time": "4 years ago"},
    {"title": "Epic games current free games...", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt3u4tBZtra7wm_ddU1MyW_JEeFGmA9vVYiw&s", "duration": "8:32", "channel": "Peter McKinnon", "views": "1.2M views", "time": "2 days ago"},
    {"title": "Red One Review – 'A small amount of cheer'", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5-xN42jOVixMZu1Mcy4-vtD1K3Wn9vfoAHQ&s", "duration": "12:45", "channel": "Code Aesthetics", "views": "450K views", "time": "5 hours ago"},
  ];

  // 3. Subscriptions Data
  static const List<Map<String, String>> subscriptionsData = [
    {"title": "Unboxing the M4 MacBook Pro", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJVhgmkmTZgaq82Oif66Y5TOkt_osYaqI0OA&s", "duration": "14:20", "channel": "MKBHD", "views": "3M views", "time": "6 hours ago"},
    {"title": "The Problem with Modern UI", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF90cKIVdn0AqeumYyI5XYkxyga9Q9W142Ig&s", "duration": "18:50", "channel": "Linus Tech Tips", "views": "1.5M views", "time": "1 day ago"},
    {"title": "How I Learned to Code in 6 Months", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfM4D73r7QxpJc-d7cCJXj_KF8o_stV5ftkQ&s", "duration": "10:05", "channel": "Dev Journey", "views": "300K views", "time": "2 weeks ago"},
    {"title": "Tesla Bot Update", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7zYYPQGNgQfkck9Zoc9TfUz_tUl2EPRc0aA&s", "duration": "05:30", "channel": "Tesla", "views": "2M views", "time": "3 days ago"},
    {"title": "10 Best NFT Discord Servers and Groups to Join in 2026", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYC-wnV8rElqkFhy80i8aZhhmSpm8MNm0t7A&s", "duration": "8:32", "channel": "Peter McKinnon", "views": "1.2M views", "time": "2 days ago"},
    {"title": "Top 7 Open Source Animation Software", "thumb": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLrLmHnUnxeQ-6SJwvXZ9oRjaABiRaKZQamg&s", "duration": "12:45", "channel": "Code Aesthetics", "views": "450K views", "time": "5 hours ago"},
  ];

  // 3. Subscriptions Data
  /*static const List<Map<String, String>> comedyData = [
    {"title": "Unboxing the M4 MacBook Pro", "thumb": "https://picsum.photos/seed/s1/400/225", "duration": "14:20", "channel": "MKBHD", "views": "3M views", "time": "6 hours ago"},
    {"title": "The Problem with Modern UI", "thumb": "https://picsum.photos/seed/s2/400/225", "duration": "18:50", "channel": "Linus Tech Tips", "views": "1.5M views", "time": "1 day ago"},
    {"title": "How I Learned to Code in 6 Months", "thumb": "https://picsum.photos/seed/s3/400/225", "duration": "10:05", "channel": "Dev Journey", "views": "300K views", "time": "2 weeks ago"},
    {"title": "Tesla Bot Update", "thumb": "https://picsum.photos/seed/s4/400/225", "duration": "05:30", "channel": "Tesla", "views": "2M views", "time": "3 days ago"},
    {"title": "Can a Professional Photographer spot the difference?", "thumb": "https://picsum.photos/seed/p1/400/225", "duration": "8:32", "channel": "Peter McKinnon", "views": "1.2M views", "time": "2 days ago"},
    {"title": "The Art of Minimalist Coding", "thumb": "https://picsum.photos/seed/p2/400/225", "duration": "12:45", "channel": "Code Aesthetics", "views": "450K views", "time": "5 hours ago"},
  ];*/

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchHeader(),
          
          _buildSectionHeader("Recommendations"),
          const SizedBox(height: 20),
          _buildVideoGrid(recommendations),

          const SizedBox(height: 30),
          _buildSectionHeader("Watching"),
          const SizedBox(height: 20),
          _buildVideoGrid(watchingData),

          const SizedBox(height: 30),
          _buildSectionHeader("Subscriptions"),
          const SizedBox(height: 20),
          _buildVideoGrid(subscriptionsData),

          const SizedBox(height: 40),
          /*_buildSectionHeader("Comedy"),
          const SizedBox(height: 20),
          //_buildShortsGrid(shortsData),
          _buildVideoGrid(comedyData),
          
          const SizedBox(height: 50), // Bottom padding*/
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.redAccent),
    );
  }

  Widget _buildVideoGrid(List<Map<String, String>> data) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 250,
        crossAxisSpacing: 20,
        mainAxisSpacing: 25,
        childAspectRatio: 1.0, // Increased height for text safety
      ),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];
        return VideoCard(
          title: item['title']!,
          thumbnail: item['thumb']!,
          duration: item['duration']!,
          channel: item['channel']!,
          views: item['views']!,
          time: item['time']!,
        );
      },
    );
  }
}