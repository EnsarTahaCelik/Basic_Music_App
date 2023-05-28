import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pitontechnologymusicappdesign/detailScreen.dart';
import 'package:pitontechnologymusicappdesign/firstNotifactionScreen.dart';
import 'package:pitontechnologymusicappdesign/libraryScreen.dart';
import 'package:pitontechnologymusicappdesign/profileScreen.dart';
import 'package:pitontechnologymusicappdesign/const.dart';
import 'package:pitontechnologymusicappdesign/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Podkes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool showFirstScreen = true;
  int screenCode=0;

  @override
  Widget build(BuildContext context) {

    var Screenwidth = MediaQuery.of(context).size.width;
    var Screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Backgroundcolor,
        body:
      SingleChildScrollView(
        child: Column(
          children: [
            Visibility(visible: showFirstScreen,child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(visible: screenCode==0 ? true:false,child:
                SizedBox(
                  width: Screenwidth,
                  child: Column(
                    children: [
                      SizedBox(height: Screenheight/15,),
                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                        child: Image.asset("lib/photos/firstNotifactionPhotos1.PNG",height: Screenheight/2.56,),
                      ),
                      SizedBox(height: Screenheight/20,),
                      Text("Podkes",style: GoogleFonts.roboto(fontSize: Screenheight*0.04,color: Maintextcolor),),
                      SizedBox(height: Screenheight/50,),
                      SizedBox(
                          width: Screenwidth*0.9,
                          child: Generaltext2("A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.")),
                      SizedBox(height: Screenheight/20,)

                    ],),
                ),
                ),
                Visibility(visible: screenCode==1 ? true:false,child:
                SizedBox(
                  width: Screenwidth,
                  child: Column(
                    children: [
                      SizedBox(height: Screenheight/15,),
                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                        child: Image.asset("lib/photos/firstNotifactionPhotos2.jpg",height: Screenheight/2.56,),
                      ),
                      SizedBox(height: Screenheight/20,),
                      Text("Music",style: GoogleFonts.roboto(fontSize: Screenheight*0.04,color: Maintextcolor),),
                      SizedBox(height: Screenheight/50,),
                      SizedBox(
                          width: Screenwidth*0.9,
                          child: Generaltext2("The primary purpose of the music streaming application is to play music available in the databases of the service, compose custom playlists and suggest similar songs.")),
                      SizedBox(height: Screenheight/20,)

                    ],),
                ),
                ),
                Visibility(visible: screenCode==2 ? true:false,child:
                SizedBox(
                  width: Screenwidth,
                  child: Column(
                    children: [
                      SizedBox(height: Screenheight/15,),
                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                        child: Image.asset("lib/photos/firstNotifactionPhotos3.jpg",height: Screenheight/2.56,),
                      ),
                      SizedBox(height: Screenheight/20,),
                      Text("Energy Music",style: GoogleFonts.roboto(fontSize: Screenheight*0.04,color: Maintextcolor),),
                      SizedBox(height: Screenheight/50,),
                      SizedBox(
                          width: Screenwidth*0.9,
                          child: Generaltext2("ENERGY MUSIC creates the perfect narrative for every aspect of the human condition. Raw emotions and feelings brought to life by our select family of composers and producers.")),
                      SizedBox(height: Screenheight/20,)

                    ],),
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      height: Screenheight/70,
                      width: Screenheight/70,
                      decoration: BoxDecoration(
                          color: screenCode==0 ? Color(0xff525298):Color(0xff7B8085),
                          shape: BoxShape.circle
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      height: Screenheight/70,
                      width: Screenheight/70,
                      decoration: BoxDecoration(
                          color: screenCode==1 ? Color(0xff525298):Color(0xff7B8085),
                          shape: BoxShape.circle
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      height: Screenheight/70,
                      width: Screenheight/70,
                      decoration: BoxDecoration(
                          color: screenCode==2 ? Color(0xff525298):Color(0xff7B8085),
                          shape: BoxShape.circle
                      ),
                    ),
                  ],),
                SizedBox(height: Screenheight/50,),
                ElevatedButton(onPressed: (){setState(() {
                  screenCode += 1;
                  if (screenCode > 2 ){showFirstScreen = false;}
                });}, child: Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Icon(Icons.arrow_forward_outlined,color: Color(0xff525298),size: Screenheight/20,),
                ),
                  style: ElevatedButton.styleFrom(primary: Color(0xffFFFFFF),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Screenheight/40))),
                )
              ],
            )
            ),
            Visibility(
              visible: !showFirstScreen,
              child: Container(
                color: Backgroundcolor,
                height: Screenheight,
                width: Screenwidth,
                child: Padding(
                  padding: const EdgeInsets.only(top: 35,bottom: 10,left: 10,right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(onPressed: (){print("On pressed notifaction button");}, icon: Icon(Icons.notification_add,size: Screenheight*0.04,color: Colors.white,)),
                            Text("Podkes",style: GoogleFonts.roboto(fontSize: Screenheight*0.04,color: Maintextcolor),),
                            IconButton(onPressed: (){print("On pressed menu button");},icon: Icon(Icons.menu,color: Colors.white,size: Screenheight*0.04,),),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: Screenwidth,
                        height: Screenheight*0.055,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              height: Screenheight*0.05,
                              child: ElevatedButton(
                                onPressed: (){print("Button1");},
                                style: ElevatedButton.styleFrom(
                                  primary: Buttonbackgroundcolor,
                                  shape: StadiumBorder(),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: Center(child: Text("All",style: TextStyle(fontSize: Screenheight*0.028,color: Selectedtextcolor),),),
                                ),),
                            ),
                            SizedBox(width: Screenheight/50,),
                            SizedBox(
                              height: Screenheight*0.05,
                              child: ElevatedButton(
                                onPressed: (){print("Button2");},
                                style: ElevatedButton.styleFrom(
                                  primary: Buttonbackgroundcolor,
                                  shape: StadiumBorder(),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: Center(child: Text("Life",style: TextStyle(fontSize: Screenheight*0.028,color: Unselectedtextcolor),),),
                                ),),
                            ),
                            SizedBox(width: Screenheight/50,),
                            SizedBox(
                              height: Screenheight*0.05,
                              child: ElevatedButton(
                                onPressed: (){print("Button3");},
                                style: ElevatedButton.styleFrom(
                                  primary: Buttonbackgroundcolor,
                                  shape: StadiumBorder(),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: Center(child: Text("Comedy",style: TextStyle(fontSize: Screenheight*0.028,color: Unselectedtextcolor),),),
                                ),),
                            ),
                            SizedBox(width: Screenheight/50,),
                            SizedBox(
                              height: Screenheight*0.05,
                              child: ElevatedButton(
                                onPressed: (){print("Button4");},
                                style: ElevatedButton.styleFrom(
                                  primary: Buttonbackgroundcolor,
                                  shape: StadiumBorder(),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: Center(child: Text("Tech",style: TextStyle(fontSize: Screenheight*0.028,color: Unselectedtextcolor),),),
                                ),),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Screenheight*0.045,),
                      Text("Trending",style: GoogleFonts.roboto(fontSize: Screenheight*0.047,color: Maintextcolor),),
                      SizedBox(height: Screenheight*0.015,),
                      Expanded(
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
                          itemCount: 8,
                          itemBuilder: (context,index){
                            return GestureDetector(
                              onTap: (){
                                print("On pressed ${index} music object");
                                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen() ));
                                },
                              child: SizedBox(
                                height: Screenheight*0.36,
                                width: Screenwidth*0.234,
                                child: Column(
                                  children: [
                                    Icon(Icons.music_note,size: Screenwidth*0.234,),
                                    Generaltext1("Müzik adı"),
                                    Generaltext2("Şarkıcı adı"),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Navigatorbarbackgroundcolor,
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


