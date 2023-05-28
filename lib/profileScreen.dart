import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pitontechnologymusicappdesign/libraryScreen.dart';
import 'package:pitontechnologymusicappdesign/const.dart';
import 'package:pitontechnologymusicappdesign/main.dart';
import 'package:pitontechnologymusicappdesign/widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {

    var Screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(child: Generaltext1("Profile Screen")),
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
