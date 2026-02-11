import 'package:flutter/material.dart';
import 'package:latihan_friends_list/screens/contactList.dart';
import '../models/userModel.dart';
import '../screens/chatPage.dart';


class ChatCard extends StatelessWidget {
  final Post post; 

  const ChatCard({super.key, required this.post});

  @override
 
Widget build(BuildContext context) {
  return Card(
    child: ListTile(
      onTap: () {
        
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatDetailScreen(post: post), 
          ),
        );
      },
      leading: CircleAvatar(backgroundImage: NetworkImage(post.avatarUrl)),
      title: Text(post.name),
      subtitle: Text(post.message),
    ),
  );
} 
}