import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../data/mockPost.dart';
import '../models/post_model.dart';

class ChatDetailScreen extends StatelessWidget {
  final String username;
  final String profileImage;
  final int chatIndex; // Penting: Menangkap index dari list chat

  const ChatDetailScreen({
    super.key,
    required this.username,
    required this.profileImage,
    required this.chatIndex,
  });

  @override
  Widget build(BuildContext context) {
    // Memilih list pesan berdasarkan index.
    // Modulo (%) digunakan agar jika index > jumlah list, data tidak error/crash.
    final List<Message> messages =
        variedMessages[chatIndex % variedMessages.length];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        titleSpacing: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(profileImage),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Active now',
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ),
              ],
            ),
          ],
        ),
        actions: const [
          Icon(Ionicons.call_outline, color: Colors.black, size: 24),
          SizedBox(width: 18),
          Icon(Ionicons.videocam_outline, color: Colors.black, size: 26),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return _buildChatBubble(messages[index]);
              },
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildChatBubble(Message msg) {
    return Align(
      alignment: msg.isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        constraints: const BoxConstraints(maxWidth: 260),
        decoration: BoxDecoration(
          color: msg.isMe ? const Color(0xFF9B30FF) : const Color(0xFFF0F0F0),
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
            bottomLeft: Radius.circular(msg.isMe ? 20 : 5),
            bottomRight: Radius.circular(msg.isMe ? 5 : 20),
          ),
        ),
        child: Text(
          msg.text,
          style: TextStyle(
            color: msg.isMe ? Colors.white : Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFEEEEEE))),
      ),
      child: SafeArea(
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.blue,
                child: Icon(Icons.camera_alt, color: Colors.white, size: 18),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: const Color(0xFFE0E0E0)),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Message...",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.mic_none, color: Colors.black),
            const SizedBox(width: 12),
            const Icon(Icons.image_outlined, color: Colors.black),
            const SizedBox(width: 12),
            const Icon(Icons.add_circle_outline, color: Colors.black),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
