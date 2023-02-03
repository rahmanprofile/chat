import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/user.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<ChatMessage> message = [
    ChatMessage(messageContent: "Hello , hey i am", messageType: "reciever"),
    ChatMessage(messageContent: "how are you", messageType: "fine"),
    ChatMessage(messageContent: "Where you are ?", messageType: "Mumbai"),
    ChatMessage(messageContent: "Hello dear", messageType: "reciever"),
  ];
  final systemColor =
      SystemUiOverlayStyle(statusBarColor: Colors.blueGrey.shade900);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      backgroundColor:const Color(0xffcbcbcb),
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.blueGrey.shade900,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.person,color: Colors.grey[900],),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Rahman",style: GoogleFonts.lato(color: Colors.white),),
                Text("online",style: GoogleFonts.lato(color: Colors.white,fontSize: 12),),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.local_phone)
          ),
          IconButton(
              onPressed: () {
              },
              icon: const Icon(Icons.more_vert_outlined)
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: message.length,
              shrinkWrap: true,
              physics:const NeverScrollableScrollPhysics(),
              padding:const EdgeInsets.only(top:10,bottom:10),
              itemBuilder: (context , index) {
                return Container(
                  padding:const EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                  child: Align(
                    alignment: (message[index].messageType == "reciever"
                        ? Alignment.topLeft:Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: (message[index].messageType == "reciever"?
                        Colors.grey.shade200:Colors.blue[200])
                      ),
                      padding:const EdgeInsets.all(16.0),
                      child: Text(message[index].messageContent,
                        style: GoogleFonts.lato(fontSize: 15),
                      ),
                    ),
                  ),
                );
              }
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding:const EdgeInsets.only(top: 10,left: 10,bottom: 10),
              height: 55,
              margin:const EdgeInsets.all(8.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),

              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.lightBlue,
                    ),
                    child:const Icon(Icons.add,color: Colors.white,size: 20,),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                      child: TextField(
                        style: GoogleFonts.lato(
                            color: Colors.black54,fontSize: 16
                        ),
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      border:const OutlineInputBorder(
                          borderSide: BorderSide.none),
                      hintStyle: GoogleFonts.lato(
                          color: Colors.black54,fontSize: 16
                      )
                    ),
                  ),
                  ),
                  const SizedBox(width: 15),
                  FloatingActionButton(
                    backgroundColor: Colors.blueGrey.shade900,
                    elevation: 0,
                    onPressed: (){},
                    child: const Icon(Icons.send,size: 18,),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
