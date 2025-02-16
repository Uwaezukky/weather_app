import 'package:flutter/material.dart';

const kTextStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 14,
  color: Colors.white,
);

const kTextStyle2 = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 18,
  color: Colors.white,
  //shadows: Shadow(color: Colors.black),
);

const kTextStyle3 = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 18,
  color: Colors.white,
);

const kTextStyle4 =
    TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white);

//What's being worked on: Columns inside a Row.
//ie: Columns being stacked one on another, then placed side by side.

// @overridrride
// Widget build(BuildContext context) {
//   return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: '/',
//     routes: {
//       '/': (context) => FirstScreen(), // Define the first screen here
//       '/second': (context) => Cloudypage(),
//     },
//   );
// }
// }
//
// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
