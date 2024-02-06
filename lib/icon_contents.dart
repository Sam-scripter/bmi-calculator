import 'package:flutter/material.dart';

import 'constants.dart';

class CardChildContents extends StatelessWidget {
  final IconData icon;
  final String label;

  const CardChildContents({Key? key, required this.icon, required this.label})
      : super(key: key); // Include Key and call super

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: const Color(0xFF8D8E98),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
