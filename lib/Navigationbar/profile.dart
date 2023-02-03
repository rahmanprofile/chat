import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcbcbcb),
      body: Column(children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.grey),
                child: const Icon(Icons.person, size: 40),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Rahman",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  Text(
                    "I'm an engineer",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        ListTile(
          onTap: (){},
          leading: const Icon(Icons.key_outlined),
          title: Text(
            "Account",
            style: GoogleFonts.lato(fontWeight: FontWeight.w700),
          ),
          subtitle: const Text("Account settings"),
        ),
        ListTile(
          onTap: (){},
          leading: const Icon(Icons.color_lens_rounded),
          title: Text(
            "Theme",
            style: GoogleFonts.lato(fontWeight: FontWeight.w700),
          ),
          subtitle: const Text("Theme settings"),
        ),
        ListTile(
          onTap: (){},
          leading: const Icon(Icons.notifications_active),
          title: Text(
            "Notification",
            style: GoogleFonts.lato(fontWeight: FontWeight.w700),
          ),
          subtitle: const Text("Notification settings"),
        ),
        ListTile(
          onTap: (){},
          leading: const Icon(Icons.help_sharp),
          title: Text(
            "Help",
            style: GoogleFonts.lato(fontWeight: FontWeight.w700),
          ),
          subtitle: const Text("Account help"),
        ),
        ListTile(
          onTap: (){},
          leading: const Icon(Icons.logout),
          title: Text(
            "Logout",
            style: GoogleFonts.lato(fontWeight: FontWeight.w700),
          ),
          subtitle: const Text("User logout"),
        ),
      ]),
    );
  }
}
