import 'dart:ffi';

import 'package:flutter/material.dart';

const _cardMargins = 15.0;
const _cardBorderRadius = 10.0;

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild, this.onTap});

  final Color? color;
  final Widget? cardChild;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(_cardMargins),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(_cardBorderRadius),
        ),
      ),
    );
  }
}

// child: GestureDetector(
// onTap: () {
// setState(() {
// selectedSex = Sex.male;
// });
// },
// child: