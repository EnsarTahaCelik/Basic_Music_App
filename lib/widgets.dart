
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pitontechnologymusicappdesign/const.dart';

class Generaltext1 extends StatefulWidget {

  Generaltext1(this.text);
  late String text;

  @override
  State<Generaltext1> createState() => _Generaltext1State();
}

class _Generaltext1State extends State<Generaltext1> {
  @override

  Widget build(BuildContext context) {
    var Screenwidth = MediaQuery.of(context).size.width;
    var Screenheight = MediaQuery.of(context).size.height;

    return Text(widget.text,style: GoogleFonts.roboto(fontSize: Screenheight*0.028,color: Maintextcolor),);
  }
}

class Generaltext2 extends StatefulWidget {
  Generaltext2 (this.text);

  late String text;

  @override
  State<Generaltext2> createState() => _Generaltext2State();
}

class _Generaltext2State extends State<Generaltext2> {
  @override
  Widget build(BuildContext context) {

    var Screenwidth = MediaQuery.of(context).size.width;
    var Screenheight = MediaQuery.of(context).size.height;

    return Text(widget.text,style: GoogleFonts.roboto(fontSize: Screenheight*0.02,color: Secondtextcolor),);
  }
}


