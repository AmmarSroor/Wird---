
import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_wird_logo.dart';
import 'package:ramadan_cmpetitions/screens/login_and_register/widgets/build_ramadan_message.dart';

AppBar buildAppBar({required double screenHeight ,required double screenWidth}){
  return AppBar(
    toolbarHeight: screenHeight*0.16,
    backgroundColor: Color(HEX_BLUE_COLOR),
    title: Container(
      width: screenWidth,
      height: screenHeight*0.19,
      child: Stack(
        children: [
          Positioned(
            top: screenHeight * 0.035,
            left: screenWidth * 0.01,
            child: BuildWirdLogo(
              width: screenWidth*0.13,
              height: screenHeight*0.07,
            ),
          ),
          Positioned(
            top: screenHeight * 0.085,

            child: BuildCompetitionWirdMessage(),
          ),
        ],
      ),
    ),
    automaticallyImplyLeading: false,
  );
}

const List<String> topPersonPosition = [
  'المركز الأول',
  'المركز الثاني',
  'المركز الثالث',
  'المركز الرابع',
  'المركز الخامس',
  'المركز السادس',
  'المركز السابع',
  'المركز الثامن',
  'المركز التاسع',
  'المركز العاشر',
];

const List<int> days = [
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19,
  20,
  21,
  22,
  23,
  24,
  25,
  26,
  27,
  28,
  29,
  30,
];