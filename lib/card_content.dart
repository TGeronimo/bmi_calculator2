import 'package:flutter/material.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {
  CardContent({required this.genderLabel, required this.genderIcon});

  final String genderLabel;
  final IconData genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderLabel,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
