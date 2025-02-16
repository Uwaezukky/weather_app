import 'package:flutter/material.dart';

import 'cloudyPage.dart';
import 'constants.dart';
import 'imageAsset.dart';
import 'reusableColumnCard.dart';

void main() {
  runApp(const MyApp());
}n  nhjn

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(), // Define the first screen here
        '/second': (context) => Cloudypage(),
      },
      // home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF47BBE1),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF29B2DD),
                Color(0xFF33AADD),
                Color(0xFF2DC8EA),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'images/map.png',
                      width: 27,
                      height: 27,
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Fortaleza',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 20.73,
                    ),
                    Image.asset(
                      'images/arrow_down.png',
                      width: 10,
                      height: 6.36,
                    ),
                    const SizedBox(
                      width: 170,
                    ),
                    Image.asset(
                      'images/bell.png',
                      width: 29,
                      height: 27,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Image.asset(
                  'images/Sun.png',
                  width: 284,
                  height: 187,
                ),
                const SizedBox(
                  height: 2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: const Text(
                    '30°',
                    style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Text('Precipitations\nMax.: 34º   Min.: 28º',
                    textAlign: TextAlign.center, style: kTextStyle2),
                const SizedBox(height: 37),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF104084).withOpacity(0.3),
                  ),
                  height: 47,
                  width: 343,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 31.5),
                      ImageAsset(
                        imagePath: 'images/rain.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(width: 3.5),
                      Text(
                        '18%',
                        style: kTextStyle,
                      ),
                      SizedBox(width: 62.5),
                      ImageAsset(
                        imagePath: 'images/humidity.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(width: 3.5),
                      Text(
                        '67%',
                        style: kTextStyle,
                      ),
                      SizedBox(
                        width: 46.5,
                      ),
                      ImageAsset(
                        imagePath: 'images/wind.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '25km/h',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  //padding:
                  height: 217,
                  width: 343,
                  decoration: BoxDecoration(
                    color: const Color(0xFF104084).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 12, left: 16, right: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Today',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            Text('Mar, 10', style: kTextStyle2),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 13,
                            right: 14,
                            bottom: 14,
                            //top: 48,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ReusableColumnCard(
                                degrees: '30\u00b0c',
                                text: '15.00',
                              ),
                              ReusableColumnCard(
                                degrees: '30\u00b0c',
                                text: '16.00',
                              ),
                              ReusableColumnCard(
                                degrees: '28\u00b0c',
                                text: '17.00',
                              ),
                              ReusableColumnCard(
                                  degrees: '28\u00b0c', text: '18.00'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 343,
                  height: 151,
                  decoration: BoxDecoration(
                    color: Color(0xFF104084).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.only(
                    left: 14,
                    right: 18,
                    top: 11,
                  ),
                  child: const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Next Forecast',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          ImageAsset(
                            imagePath: 'images/calendar.png',
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Monday',
                            style: kTextStyle3,
                          ),
                          ImageAsset(
                            imagePath: 'images/raindrops.png',
                            width: 50,
                            height: 50,
                          ),
                          Row(
                            children: [
                              Text(
                                '13\u00b0c',
                                style: kTextStyle4,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Opacity(
                                opacity: 0.5,
                                child: Text(
                                  '10\u00b0c',
                                  style: kTextStyle4,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tuesday',
                            style: kTextStyle3,
                          ),
                          ImageAsset(
                            imagePath: 'images/lightening.png',
                            width: 50,
                            height: 50,
                          ),
                          Row(
                            children: [
                              Text(
                                '17\u00b0c',
                                style: kTextStyle4,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Opacity(
                                opacity: 0.5,
                                child: Text(
                                  '12\u00b0c',
                                  style: kTextStyle4,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
