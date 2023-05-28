
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:pitontechnologymusicappdesign/const.dart';
import 'package:pitontechnologymusicappdesign/widgets.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override

  bool musicsituation = true;

  Widget build(BuildContext context) {

    var Screenheight = MediaQuery.of(context).size.height;
    var Screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Backgroundcolor,
      body: Column(
        children: [
          SizedBox(height: Screenheight/11.53,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: Screenwidth/20,),
            IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: Screenheight/20,),onPressed:(){Navigator.pop(context);},),
              SizedBox(width: Screenwidth/5,),
              Generaltext1("Now Playing")

          ],),
          SizedBox(height: Screenheight/11.53,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Icon(Icons.music_note,size: Screenheight/2.9,),
            Generaltext1("Müzik adı"),
            SizedBox(height: Screenheight/50,),
            Generaltext2("Şarkıcı adı"),],),
          SizedBox(height: Screenheight/23,),
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: ProgressBar(
              thumbColor: Colors.white,
              progress: const Duration(seconds: 37),
              total: const Duration(seconds: 147),
              timeLabelTextStyle: TextStyle(fontSize: Screenheight*0.02,color: Color(0xffF4F7FC)),


            ),

          ),
          SizedBox(height: Screenheight/11.53),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){print("On pressed music back button");}, icon: Icon(Icons.skip_previous_sharp,color: Colors.white,size: Screenheight/20,),),
              SizedBox(width: Screenwidth/10,),
              Visibility(visible: !musicsituation,child: IconButton(onPressed: (){print("On pressed music start button");setState(() {musicsituation=!musicsituation;});}, icon: Icon(Icons.play_circle_fill_sharp,color: Colors.white,size: Screenheight/20,)),),
              Visibility(visible: musicsituation,child: IconButton(onPressed: (){print("On pressed music pause button");setState(() {musicsituation=!musicsituation;});}, icon: Icon(Icons.pause,color: Colors.white,size: Screenheight/20,)),),
              SizedBox(width: Screenwidth/10,),
              IconButton(onPressed: (){print("On pressed music next button");}, icon: Icon(Icons.skip_next_sharp,color: Colors.white,size: Screenheight/20,)),
          ],
          )

        ],
      ),
    );
  }
}
