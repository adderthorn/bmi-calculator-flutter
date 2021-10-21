import 'package:flutter/material.dart';

const _margins = 15.0;
const _borderRadius = 10.0;

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild});

  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(_margins),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
    );
  }
}