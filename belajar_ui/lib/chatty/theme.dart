import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Colours
Color blueColour = const Color(0xff1F8DF5);
Color whiteColour = const Color(0xffFFFFFF);
Color lightBlueColour = const Color(0xff9ED0FF);
Color blackColour = const Color(0xff2C3A59);
Color greyColour = const Color(0xff808BA2);
Color greenColour = const Color(0xff29CB9E);

//Fonts
TextStyle titleTextStyle = GoogleFonts.poppins(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

TextStyle subTitleTextStyle = GoogleFonts.poppins(
  color: greyColour,
  //di Flutter defaul value font adalah 14
  fontWeight: FontWeight.w300,
);
