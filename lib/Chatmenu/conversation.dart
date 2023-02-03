import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chat.dart';

class Conversation extends StatefulWidget {
  String name;
  String messageText;
  String imageUrl;
  String time;
  bool isMessageRead;
   Conversation({
    Key? key,
    required this.name,
    required this.messageText,
    required this.imageUrl,
    required this.time,
    required this.isMessageRead
  }) : super(key: key);

  @override
  State<Conversation> createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Chat())
        );
      },
      child: Container(
        padding:const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.imageUrl),
                      maxRadius: 30,
                    ),
                    const SizedBox(
                      width: 16
                    ),
                    Expanded(
                      child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.name,
                            style: GoogleFonts.lato(fontWeight: FontWeight.w600,fontSize: 16),
                          ),
                          const SizedBox(height: 6),
                          Text(widget.messageText,
                            style: GoogleFonts.lato(fontSize: 13,
                                fontWeight: widget.isMessageRead ? FontWeight.bold : FontWeight.normal,
                                color: Colors.grey.shade600
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                  ],
                ),
            ),
            Text(widget.time,style: GoogleFonts.lato(
                fontSize: 12,
                fontWeight: widget.isMessageRead ? FontWeight.bold : FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
