import 'package:flutter/material.dart';

const _iconSize = 80.0;
const _textSize = 18.0;
const _textColor = Color(0xFF8D8E98);
const _sizedBoxSize = 15.0;

class CardIcon extends StatelessWidget {
  CardIcon({@required this.textData, this.icon});

  final IconData icon;
  final String textData;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: _iconSize,
        ),
        SizedBox(
          height: _sizedBoxSize,
        ),
        Text(
          textData,
          style: TextStyle(
            fontSize: _textSize,
            color: _textColor,
          ),
        ),
      ],
    );
  }
}