// ignore_for_file: non_constant_identifier_names

import 'package:basicss/models/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
);

// USERS
final User Stuti = User(
  id: 1,
  name: 'Stuti',
  imageUrl: 'images/Stuti.jpeg',
);
final User Deeksha = User(
  id: 2,
  name: 'Deeksha',
  imageUrl: 'images/deeksha.jpeg',
);
final User Muskan = User(
  id: 3,
  name: 'Muskan',
  imageUrl: 'images/Muskan.jpeg',
);
final User Maa = User(
  id: 4,
  name: 'Maa',
  imageUrl: 'images/maa.jpeg',
);
final User Kuki = User(
  id: 5,
  name: 'Kuki',
  imageUrl: 'images/Kuki.jpeg',
);
final User Pant = User(
  id: 6,
  name: 'Pant',
  imageUrl: 'images/pant.jpeg',
);
final User Faisal = User(
  id: 7,
  name: 'Faisal',
  imageUrl: 'images/faisal.jpeg',
);
final User Sahaj = User(
  id: 6,
  name: 'Sahaj',
  imageUrl: 'images/sahaj.jpeg',
);
final User Harsh = User(
  id: 6,
  name: 'Harsh',
  imageUrl: 'images/harsh.jpeg',
);
List<User> fav = [Deeksha, Maa, Stuti, Kuki, Pant];

/////chatsssss

List<Message> chats = [
  Message(
    sender: Deeksha,
    time: '5:30 PM',
    text: 'Hey, How was your day?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Stuti,
    time: '4:30 PM',
    text: 'Can you choose a laptop for me',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Maa,
    time: '3:30 PM',
    text: 'Kesa h, beta?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: Faisal,
    time: '2:30 PM',
    text: 'Can you help me up with a problem',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Pant,
    time: '1:30 PM',
    text: 'Urgent call me asap',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: Kuki,
    time: '5:30 PM',
    text: 'Book my tickets',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Sahaj,
    time: '9:30 PM',
    text: 'Let\'s go out',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Harsh,
    time: '2:30 PM',
    text: 'Here is solution to your Dsa problem',
    isLiked: false,
    unread: true,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: Deeksha,
    time: '5:30 PM',
    text: 'Hey,how was your day?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Was good, Just took my dog for a walk',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Deeksha,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'She\'s good now. Did you had your dinner?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Deeksha,
    time: '3:15 PM',
    text: 'Yess I\'m soo full now',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Where did you went out to eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Deeksha,
    time: '2:00 PM',
    text: 'I went to a nerby cafe, I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Haha',
    isLiked: false,
    unread: true,
  ),
];
