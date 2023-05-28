
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pitontechnologymusicappdesign/profileScreen.dart';
import 'package:pitontechnologymusicappdesign/const.dart';
import 'package:pitontechnologymusicappdesign/main.dart';
import 'package:pitontechnologymusicappdesign/widgets.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {

    var Screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(child: Generaltext1("Library Screen")),
      backgroundColor: Backgroundcolor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Navigatorbarbackgroundcolor ,
        selectedItemColor: Navigatorbarselectedcolor,
        unselectedItemColor: Navigatorbarunselectedcolor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: Screenheight/25,),label: "Discover",),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection,size: Screenheight/25,),label: "Library"),
          BottomNavigationBarItem(icon: Icon(Icons.person,size: Screenheight/25,),label: "Profile"),
        ],

        onTap: (indeks){
          if (indeks == 0 ) { Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Podkes") )); }
          else if (indeks == 1 ) { Navigator.push(context, MaterialPageRoute(builder: (context) => LibraryScreen() )); }
          else if (indeks == 2 ) {Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen() )); }
        },
      ),
    );
  }
}
