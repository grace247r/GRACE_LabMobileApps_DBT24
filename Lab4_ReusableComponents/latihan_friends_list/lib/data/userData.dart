import 'package:flutter/material.dart';
import '../models/userModel.dart';
import '../models/chatMessage.dart';

List<Post> userData = [
  Post(
    id: 1,
    name: 'Alice',
    message: 'Hey there!',
    avatarUrl: 'https://i.pravatar.cc/150?u=1',
    chatHistory: [
      ChatMessage(text: "Halo Alice!", isMe: true, time: "10:00"),
      ChatMessage(text: "Hey there!", isMe: false, time: "10:01"),
    ],
  ),
  Post(
    id: 2,
    name: 'Bob',
    message: 'What\'s up?',
    avatarUrl: 'https://i.pravatar.cc/150?u=2',
    chatHistory: [
      ChatMessage(text: "Lagi dimana?", isMe: true, time: "09:00"),
      ChatMessage(text: "What's up?", isMe: false, time: "09:05"),
    ],
  ),
];
