import 'package:flutter/material.dart';

class ImageAsset extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;

  const ImageAsset({
    Key? key,
    required this.imagePath, // Now a named parameter
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: width,
      height: height,
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:zukky_weather_app/cloudyPage.dart';
//
// import 'constants.dart';
// import 'imageAsset.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       routes: {
//         '/': (context) => FirstScreen(), // Define the first screen here
//         '/second': (context) => Cloudypage(),
//       },
//     );
//   }
// }
//
// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           padding: const EdgeInsets.all(16),
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 Color(0xFF29B2DD),
//                 Color(0xFF33AADD),
//                 Color(0xFF2DC8EA),
//               ],
//             ),
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Image.asset(
//                       'images/map.png',
//                       width: 27,
//                       height: 27,
//                     ),
//                     const SizedBox(width: 12),
//                     const Text(
//                       'Fortaleza',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(width: 20.73),
//                     Image.asset(
//                       'images/arrow_down.png',
//                       width: 10,
//                       height: 6.36,
//                     ),
//                     const SizedBox(width: 170),
//                     Image.asset(
//                       'images/bell.png',
//                       width: 29,
//                       height: 27,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 8),
//                 Image.asset(
//                   'images/Sun.png',
//                   width: 284,
//                   height: 187,
//                 ),
//                 const SizedBox(height: 2),
//                 const Text(
//                   '30°',
//                   style: TextStyle(
//                     fontSize: 64,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 const Text(
//                   'Precipitations\nMax.: 34º   Min.: 28º',
//                   textAlign: TextAlign.center,
//                   style: kTextStyle2,
//                 ),
//                 const SizedBox(height: 37),
//
//                 // 🌟 Button to navigate to the second screen
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/second');
//                   },
//                   child: Text('Go to Second Screen'),
//                 ),
//
//                 const SizedBox(height: 20),
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: const Color(0xFF104084).withOpacity(0.3),
//                   ),
//                   height: 47,
//                   width: 343,
//                   child: const Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       SizedBox(width: 31.5),
//                       ImageAsset(
//                         imagePath: 'images/rain.png',
//                         width: 24,
//                         height: 24,
//                       ),
//                       SizedBox(width: 3.5),
//                       Text(
//                         '18%',
//                         style: kTextStyle,
//                       ),
//                       SizedBox(width: 62.5),
//                       ImageAsset(
//                         imagePath: 'images/humidity.png',
//                         width: 24,
//                         height: 24,
//                       ),
//                       SizedBox(width: 3.5),
//                       Text(
//                         '67%',
//                         style: kTextStyle,
//                       ),
//                       SizedBox(width: 46.5),
//                       ImageAsset(
//                         imagePath: 'images/wind.png',
//                         width: 24,
//                         height: 24,
//                       ),
//                       SizedBox(width: 5),
//                       Text(
//                         '25km/h',
//                         style: kTextStyle,
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
