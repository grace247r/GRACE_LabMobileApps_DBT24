import '../models/post_model.dart';

// --- DATA MOCK STORIES (7 USER) ---
List<User> mockStories = [
  User(
    username: 'Cerita Anda',
    profileImage:
        'https://shopee.co.id/inspirasi-shopee/wp-content/uploads/2022/12/Rose-Tiffany-Co-Lock-2023-Campaign01-1-1.webp', // Karakter/User Profile
    hasStory: false,
  ),
  User(
    username: 'jennierubyjane',
    profileImage:
        'https://dam.mediacorp.sg/image/upload/s--r4btYm_D--/c_crop,h_607,w_1080,x_0,y_79/c_fill,g_auto,h_468,w_830/f_auto,q_auto/v1/mediacorp/cnabahasa/images/2024-09/jeannie_blackpink.jpg?itok=5gxzjt3R',
    hasStory: true,
  ),
  User(
    username: 'roses_are_rosie',
    profileImage:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Blackpink_Ros%C3%A9_Rimowa_1.jpg/250px-Blackpink_Ros%C3%A9_Rimowa_1.jpg',
    hasStory: true,
  ),
  User(
    username: 'lalalalisa_m',
    profileImage:
        'https://upload.wikimedia.org/wikipedia/commons/0/09/20240314_Lisa_Manoban_07.png',
  ),
   User(
    username: 'jennierubyjane',
    profileImage:
        'https://dam.mediacorp.sg/image/upload/s--r4btYm_D--/c_crop,h_607,w_1080,x_0,y_79/c_fill,g_auto,h_468,w_830/f_auto,q_auto/v1/mediacorp/cnabahasa/images/2024-09/jeannie_blackpink.jpg?itok=5gxzjt3R',
    hasStory: true,
  ),
  User(
    username: 'roses_are_rosie',
    profileImage:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Blackpink_Ros%C3%A9_Rimowa_1.jpg/250px-Blackpink_Ros%C3%A9_Rimowa_1.jpg',
    hasStory: true,
  ),
  User(
    username: 'lalalalisa_m',
    profileImage:
        'https://upload.wikimedia.org/wikipedia/commons/0/09/20240314_Lisa_Manoban_07.png',
  ),
];

// --- DATA MOCK POSTS (4 POST) ---
List<Post> mockPosts = [
  Post(
    user: User(
      username: 'blackpinkofficial',
      profileImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFBQAxbEMICt82ykyzwgk2sc9NGLcw6dHOMA&s',
    ),
    postImage:
        'https://mediaindonesia.gumlet.io/news/2023/03/5a8a91f028df0e845c37e513f3896730.jpg?w=360&dpr=2.6',
    caption: 'Pink Venom is out now! Blackpink in your area! 🖤💖',
    likes: '12,450,900 likes',
  ),
  Post(
    user: User(
      username: 'blackpinkofficial',
      profileImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFBQAxbEMICt82ykyzwgk2sc9NGLcw6dHOMA&s',
    ),
    postImage:
        'https://mediaindonesia.gumlet.io/news/2023/03/5a8a91f028df0e845c37e513f3896730.jpg?w=360&dpr=2.6',
    caption: 'Pink Venom is out now! Blackpink in your area! 🖤💖',
    likes: '12,450,900 likes',
  ),
  Post(
    user: User(
      username: 'blackpinkofficial',
      profileImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFBQAxbEMICt82ykyzwgk2sc9NGLcw6dHOMA&s',
    ),
    postImage:
        'https://mediaindonesia.gumlet.io/news/2023/03/5a8a91f028df0e845c37e513f3896730.jpg?w=360&dpr=2.6',
    caption: 'Pink Venom is out now! Blackpink in your area! 🖤💖',
    likes: '12,450,900 likes',
  ),
  Post(
    user: User(
      username: 'blackpinkofficial',
      profileImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFBQAxbEMICt82ykyzwgk2sc9NGLcw6dHOMA&s',
    ),
    postImage:
        'https://mediaindonesia.gumlet.io/news/2023/03/5a8a91f028df0e845c37e513f3896730.jpg?w=360&dpr=2.6',
    caption: 'Pink Venom is out now! Blackpink in your area! 🖤💖',
    likes: '12,450,900 likes',
  ),
];
List<ChatMessage> mockChats = [
  ChatMessage(
    user: User(
      username: 'jimin_park',
      profileImage: 'https://i.pravatar.cc/150?u=jimin',
    ),
    lastMessage: 'Amenn',
    time: '7 hari',
  ),
  ChatMessage(
    user: User(
      username: 'sooyaaa__',
      profileImage: 'https://i.pravatar.cc/150?u=jisoo',
    ),
    lastMessage: 'Dilihat Sabtu',
    time: '',
  ),
  ChatMessage(
    user: User(
      username: 'eunwo.o_c',
      profileImage: 'https://i.pravatar.cc/150?u=eunwo',
    ),
    lastMessage: 'Menyebut Anda dalam ceritanya...',
    time: '1 mg',
  ),
];

List<List<Message>> variedMessages = [
  [
    Message(
      text: "Did you see the latest teaser?",
      time: "10:00 AM",
      isMe: false,
    ),
    Message(text: "Not yet! Is it out already?", time: "10:05 AM", isMe: true),
    Message(text: "Yes, go check it now!", time: "10:06 AM", isMe: false),
  ],
  [
    Message(
      text: "Good luck for your stage today!",
      time: "Yesterday",
      isMe: false,
    ),
    Message(
      text: "Thanks! I'm a bit nervous haha",
      time: "Yesterday",
      isMe: true,
    ),
    Message(
      text: "You'll be fine, you're the best!",
      time: "09:00 AM",
      isMe: false,
    ),
  ],
  [
    Message(
      text: "Are we still on for dinner?",
      time: "2 days ago",
      isMe: false,
    ),
    Message(text: "Sure! What time?", time: "2 days ago", isMe: true),
    Message(text: "Let's meet at 7 PM", time: "11:30 PM", isMe: false),
  ],
  [
    Message(
      text: "Send me the photos from last night",
      time: "Monday",
      isMe: false,
    ),
    Message(text: "Already sent to your email!", time: "Monday", isMe: true),
    Message(text: "Got it, thanks a lot!", time: "02:00 PM", isMe: false),
  ],
];
