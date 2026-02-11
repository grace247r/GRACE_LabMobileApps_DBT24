import 'package:flutter/material.dart';
import '../models/userModel.dart';
import '../models/chatMessage.dart';

class ChatDetailScreen extends StatelessWidget {
  final Post post;

  const ChatDetailScreen({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(post.avatarUrl),
              radius: 18,
            ),
            const SizedBox(width: 10),
            Text(post.name),
          ],
        ),
      ),
      body: Column(
        children: [
          // 1. Daftar Pesan
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: post.chatHistory.length,
              itemBuilder: (context, index) {
                final chat = post.chatHistory[index];
                return _buildChatBubble(chat);
              },
            ),
          ),

          // 2. Tempat Ketik Pesan (Input)
          _buildMessageInput(),
        ],
      ),
    );
  }

  // --- Widget Balon Chat ---
  Widget _buildChatBubble(ChatMessage chat) {
    return Align(
      alignment: chat.isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: chat.isMe ? Colors.blue[100] : Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: chat.isMe
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Text(chat.text),
            const SizedBox(height: 5),
            Text(
              chat.time,
              style: const TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  // --- Widget Input Box ---
  Widget _buildMessageInput() {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Tulis pesan...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
