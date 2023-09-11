import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableIcon extends StatelessWidget {
  const ReusableIcon({
    super.key,
    required this.cardIcon,
    required this.cardText,
  });

  final IconData cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          cardText,
          style: kCardTextStyle,
        )
      ],
    );
  }
}
