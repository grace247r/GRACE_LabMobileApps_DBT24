import 'package:flutter/material.dart';
import '../models/post_model.dart';

class StoryCircle extends StatelessWidget {
  final User user; // Menerima Object User

  const StoryCircle({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: user.hasStory
                  ? const LinearGradient(
                      colors: [
                        Color(0xFFFBAA47),
                        Color(0xFFD91A46),
                        Color(0xFFA60F93),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    )
                  : null,
              border: !user.hasStory
                  ? Border.all(color: Colors.grey.shade800)
                  : null,
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(user.profileImage),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            user.username,
            style: const TextStyle(color: Colors.black, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
