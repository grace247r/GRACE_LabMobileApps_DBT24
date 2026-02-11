import 'chatMessage.dart';
class Post {
  final int id;
  final String name;
  final String message; 
  final String avatarUrl;
  final List<ChatMessage> chatHistory; 
  Post({
    required this.id,
    required this.name,
    required this.message,
    required this.avatarUrl,
    required this.chatHistory, 
  });
}
