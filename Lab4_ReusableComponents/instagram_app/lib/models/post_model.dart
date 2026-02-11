class User {
  final String username;
  final String profileImage;
  final bool hasStory;

  User({
    required this.username,
    required this.profileImage,
    this.hasStory = true,
  });
}

class Post {
  final User user;
  final String postImage;
  final String caption;
  final String likes;

  Post({
    required this.user,
    required this.postImage,
    required this.caption,
    required this.likes,
  });
}

class ChatMessage {
  final User user;
  final String lastMessage;
  final String time;
  final bool isUnread;

  ChatMessage({
    required this.user,
    required this.lastMessage,
    required this.time,
    this.isUnread = false,
  });
}

class Message {
  final String text;
  final String time;
  final bool isMe;

  Message({required this.text, required this.time, required this.isMe});
}
