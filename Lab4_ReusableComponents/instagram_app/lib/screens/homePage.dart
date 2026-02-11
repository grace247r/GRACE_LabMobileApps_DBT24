import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/story_circle.dart';
import '../widgets/post_tile.dart';
import '../widgets/bottomNavbar.dart';
import '../data/mockPost.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leading: const Icon(
          Ionicons.add_outline,
          color: Colors.black,
          size: 28,
        ),
        title: Text(
          'Instagram',
          style: GoogleFonts.grandHotel(fontSize: 32, color: Colors.black),
        ),
        actions: const [
          Icon(Ionicons.heart_outline, color: Colors.black),
          SizedBox(width: 15),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Stories Section
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mockStories.length,
                itemBuilder: (context, index) {
                  return StoryCircle(user: mockStories[index]);
                },
              ),
            ),
            
            // Feed Section
            Column(
              children: mockPosts.map((item) => PostTile(post: item)).toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InstagramBottomNav(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
