import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Navigationbar/mainhome.dart';
import '../Navigationbar/profile.dart';
import '../Navigationbar/status.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  static const List<Widget> _myWidget = <Widget> [
    MainHome(),
    Status(),
    Profile()
  ];
  final systemColor = SystemUiOverlayStyle(
    statusBarColor: Colors.blueGrey[900],
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      drawer: Drawer(
        child: ListView(),
      ),
      appBar: AppBar(
        title:Text("Messenger",style: GoogleFonts.lato(fontSize:22),),
        backgroundColor: Colors.blueGrey.shade900,
        elevation: 0.0,
        actions: [
          IconButton(
            color: Colors.blueGrey,
              onPressed: (){}, icon:const Icon(Icons.search_outlined)
          )
        ],
      ),
      body: _myWidget.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey.shade900,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.layers), label: "Status"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: (){},
        child: const Icon(Icons.add,size: 30),
      ),
    );
  }
}
