import 'package:flutter/material.dart';

import 'constants.dart';

class ReusableColumnCard extends StatelessWidget {
  // final String image;
  final String degrees;
  final String text;

  ReusableColumnCard({required this.degrees, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          degrees, // '31\u00b0C'
          style: kTextStyle2,
        ),
        const Spacer(),
        Image.asset(
          'images/Union.png',
          width: 40,
          //height: 80,
          fit: BoxFit.cover,
        ),
        const Spacer(),
        Text(
          '15.00',
          style: kTextStyle2,
        ),
      ],
    );
  }
}
