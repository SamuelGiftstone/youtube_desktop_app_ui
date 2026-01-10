import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          // Search Bar
          Expanded(
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: '',
                  prefixIcon: Icon(PhosphorIconsRegular.magnifyingGlass, size: 20),
                  suffixIcon: Icon(PhosphorIconsRegular.microphone, size: 20),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          // Actions
          const Icon(PhosphorIconsRegular.videoCamera, size: 20),
          const SizedBox(width: 20),
          const Icon(PhosphorIconsRegular.chatCircleDots, size: 20),
          const SizedBox(width: 20),
          const Badge(
            label: Text("4"),
            child: Icon(PhosphorIconsRegular.bell, size: 20),
          ),
          const SizedBox(width: 20),
          const CircleAvatar(
            radius: 14,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRKffyb-gaiKJvVfCaaWkxwlhQK53aI8BuLQ&s'),
          ),
        ],
      ),
    );
  }
}


