import 'package:flutter/material.dart';
import 'package:instagram_app/screens/chatPage.dart';
import 'package:ionicons/ionicons.dart';
import '../screens/detailChat.dart'; // Pastikan nama file ini benar

class InstagramBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const InstagramBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey.shade300, width: 0.5),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        // Logika Navigasi ditaruh di sini
        onTap: (index) {
          if (index == 2) {
            // Jika icon Chat (Paper Plane) diklik
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ChatScreen(
                  username: 'Grace',
                  profileImage: 'https://via.placeholder.com/150',
                  chatIndex: 0,
                ),
              ),
            );
          } else {
            onTap(index); // Jalankan fungsi tap normal untuk tab lain
          }
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        iconSize: 28,
        items: [
          // Index 0: Home
          BottomNavigationBarItem(
            icon: Icon(
              currentIndex == 0 ? Ionicons.home : Ionicons.home_outline,
            ),
            label: 'Home',
          ),
          // Index 1: Search
          BottomNavigationBarItem(
            icon: Icon(
              currentIndex == 1 ? Ionicons.search : Ionicons.search_outline,
            ),
            label: 'Search',
          ),
          // Index 2: Chat (Paper Plane)
          BottomNavigationBarItem(
            icon: Icon(
              currentIndex == 2
                  ? Ionicons.paper_plane
                  : Ionicons.paper_plane_outline,
            ),
            label: 'Chat',
          ),
          // Index 3: Reels
          BottomNavigationBarItem(
            icon: Icon(
              currentIndex == 3
                  ? Ionicons.play_circle
                  : Ionicons.play_circle_outline,
            ),
            label: 'Reels',
          ),
          // Index 4: Profile
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: currentIndex == 4
                    ? Border.all(color: Colors.black, width: 2)
                    : null,
              ),
              child: const CircleAvatar(
                radius: 13,
                backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150',
                ),
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
