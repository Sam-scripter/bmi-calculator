import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  Color colour;
  Widget? reusableCardChild;
  ReusableCard({super.key, required this.colour, this.reusableCardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: reusableCardChild,
    );
  }
}
