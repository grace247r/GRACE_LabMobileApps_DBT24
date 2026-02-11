import 'package:flutter/material.dart';
import '../models/userModel.dart';
import '../widgets/chatCard.dart';
import '../data/userData.dart';

class ContactListScreen extends StatelessWidget {
  final Post? post;
  const ContactListScreen({super.key, this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        const Text('Messages'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView.builder(
        itemCount: userData.length,
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (context, index) {
          return ChatCard(post: userData[index]);
        },
      ),
    );
  }
}