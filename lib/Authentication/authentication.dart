import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool value = false;
  String number = " ";
  final TextEditingController phone = TextEditingController();
  final systemColor = const SystemUiOverlayStyle(statusBarColor: Colors.white);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Registration",
              style:
                  GoogleFonts.lato(fontSize: 30, color: Colors.grey.shade900),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              "Most welcome in the Gimpact",
              style:
                  GoogleFonts.lato(fontSize: 23, color: Colors.grey.shade600),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            height: 55,
            margin: const EdgeInsets.all(8.0),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey[300]),
            child: Center(
              child: TextFormField(
                controller: phone,
                autocorrect: true,
                keyboardType: TextInputType.number,
                style: GoogleFonts.lato(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    hintText: "",
                    label: Text("Number",style: GoogleFonts.lato(color: Colors.grey.shade700),),
                    hintStyle: GoogleFonts.lato(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
          ),
          const SizedBox(
            height: 25
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  value: value,
                  onChanged: (val){
                    setState(() {
                      value = val!;
                    });
                  }
              ),
              Text("I agree your terms of Privacy Policy.",
                style: GoogleFonts.lato(fontSize: 14,color: Colors.grey.shade600
                ),
              )
            ],
          ),
          InkWell(
            onTap: (){},
            child: Container(
              height: 55,
              margin: const EdgeInsets.all(8.0),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.green.shade900
              ),
              child: Center(
                child: Text("Next",style: GoogleFonts.lato(fontWeight: FontWeight.w700,
                    color: Colors.white,fontSize: 18
                ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
