import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../models/post_model.dart';
import '../data/mockPost.dart';
import '../screens/detailChat.dart';

class ChatScreen extends StatelessWidget {
  final String username;
  final String profileImage;
  final int chatIndex; // Tambahkan parameter index

  const ChatScreen({
    super.key,
    required this.username,
    required this.profileImage,
    required this.chatIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Background utama diganti Putih
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Row(
          children: [
            Text(
              'grrrcee',
              style: TextStyle(
                color: Colors.black, // Teks jadi hitam
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 20),
            SizedBox(width: 5),
            CircleAvatar(radius: 4, backgroundColor: Colors.red),
          ],
        ),
        actions: const [
          // Ganti warna icon action jadi hitam agar terlihat
          Icon(Ionicons.create_outline, color: Colors.black, size: 28),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          // 1. Search Bar (Warna disesuaikan untuk mode terang)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200], // Abu-abu muda untuk mode terang
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.black), // Input teks hitam
                decoration: InputDecoration(
                  hintText: 'Cari atau tanya Meta AI',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.grey, size: 20),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                ),
              ),
            ),
          ),

          // 2. Horizontal User List
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              itemCount: mockChats
                  .length, // Sebaiknya gunakan mockChats agar konsisten
              itemBuilder: (context, index) {
                final chat = mockChats[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(chat.user.profileImage),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        chat.user.username,
                        style: const TextStyle(
                          color: Colors.black, // Username jadi hitam
                          fontSize: 11,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // 3. Messages List Header
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pesan',
                  style: TextStyle(
                    color: Colors.black, // Judul jadi hitam
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Permintaan',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // 4. Main Chat List
          // 4. Main Chat List
          Expanded(
            child: ListView.builder(
              itemCount: mockChats.length,
              itemBuilder: (context, index) {
                final chat = mockChats[index];
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(chat.user.profileImage),
                  ),
                  title: Text(
                    chat.user.username,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    '${chat.lastMessage} · ${chat.time}',
                    style: const TextStyle(color: Colors.grey),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Icon(
                    Ionicons.camera_outline,
                    color: Colors.black,
                    size: 26,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatDetailScreen(
                          username: chat
                              .user
                              .username, // Mengambil nama dari data mock
                          profileImage:
                              chat.user.profileImage, // Mengambil foto
                          chatIndex: index, // MENGIRIM INDEX AGAR PESAN BERBEDA
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
