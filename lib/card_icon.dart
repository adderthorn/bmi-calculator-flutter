import 'package:flutter/material.dart';
import 'constants.dart';

const _cardIconSize = 80.0;
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
          size: _cardIconSize,
        ),
        SizedBox(
          height: _sizedBoxSize,
        ),
        Text(
          textData,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}