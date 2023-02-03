import 'package:flutter/material.dart';
import '../Chatmenu/conversation.dart';
import '../Model/user.dart';

class MainHome extends StatefulWidget {
   const MainHome({Key? key,}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Bimal Das", messageText: "we talk tomorrow", imageUrl: "assets/img/", time: "Now"),
    ChatUsers(name: "Warren Buffey", messageText: "today is ossom day", imageUrl: "assets/img/", time: "Now"),
    ChatUsers(name: "Kriti Pal", messageText: "I'm busy right now", imageUrl: "assets/img/", time: "Yesterday"),
    ChatUsers(name: "Chandan Kumar", messageText: "I will be back earlier", imageUrl: "assets/img/", time: "Today"),
    ChatUsers(name: "Surya Chauhan", messageText: "Love you too bro", imageUrl: "assets/img/", time: "Yesterday"),
    ChatUsers(name: "Arjun Tyagi", messageText: "come on yarr", imageUrl: "assets/img/", time: "Now"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: chatUsers.length,
          shrinkWrap: true,
          physics:const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (context, index) {
        return Conversation(
            name: chatUsers[index].name,
            messageText: chatUsers[index].messageText,
            imageUrl: chatUsers[index].imageUrl,
            time: chatUsers[index].time,
            isMessageRead: (index == 0 || index == 3) ? true :false,
        );
      }),
    );
  }
}
