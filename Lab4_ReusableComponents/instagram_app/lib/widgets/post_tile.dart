import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../models/post_model.dart';

class PostTile extends StatelessWidget {
  final Post post; // Menerima Object Post utuh

  const PostTile({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(post.user.profileImage),
          ),
          title: Text(
            post.user.username,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: const Icon(
            Ionicons.ellipsis_horizontal,
            color: Colors.black,
          ),
        ),
        Image.network(
          post.postImage,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            children: [
              Icon(Ionicons.heart_outline, color: Colors.black),
              SizedBox(width: 15),
              Icon(Ionicons.chatbubble_outline, color: Colors.black),
              SizedBox(width: 15),
              Icon(Ionicons.paper_plane_outline, color: Colors.black),
              Spacer(),
              Icon(Ionicons.bookmark_outline, color: Colors.black),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.likes,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${post.user.username} ',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: post.caption,
                      style: const TextStyle(
                        color: Colors.black
                      )
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ],
    );
  }
}
