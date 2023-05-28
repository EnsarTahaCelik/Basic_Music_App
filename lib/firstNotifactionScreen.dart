
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pitontechnologymusicappdesign/const.dart';
import 'package:pitontechnologymusicappdesign/widgets.dart';

class firstNotifactionScreen extends StatefulWidget {
  const firstNotifactionScreen({Key? key}) : super(key: key);

  @override
  State<firstNotifactionScreen> createState() => _firstNotifactionScreenState();
}

class _firstNotifactionScreenState extends State<firstNotifactionScreen> {

  int screenCode=0;

  @override
  Widget build(BuildContext context) {

    var Screenheight = MediaQuery.of(context).size.height;
    var Screenwidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(visible: screenCode==0 ? true:false,child:
          SizedBox(
            width: double.infinity,
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
          width: double.infinity,
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
        Visibility(visible: screenCode==2 ? true:false,child:
        SizedBox(
          width: double.infinity,
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
        });}, child: Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Icon(Icons.arrow_forward_outlined,color: Color(0xff525298),size: Screenheight/20,),
        ),
          style: ElevatedButton.styleFrom(primary: Color(0xffFFFFFF),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Screenheight/40))),
        )
      ],
    );
  }
}
