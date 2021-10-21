import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_icon.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Sex { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Sex selectedSex;
  String unit = kCm;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kTitle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedSex = Sex.male;
                      });
                    },
                    color: selectedSex == Sex.male
                        ? kActivatedCardColor
                        : kInactiveCardColor,
                    cardChild: CardIcon(
                      textData: kMaleText,
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedSex = Sex.female;
                      });
                    },
                    color: selectedSex == Sex.female
                        ? kActivatedCardColor
                        : kInactiveCardColor,
                    cardChild: CardIcon(
                      textData: kFemaleText,
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActivatedCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kHeavyTextSytle,
                      ),
                      Text(
                        kCm,
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: kCmMin,
                      max: kCmMax,
                      onChanged: null),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: kActivatedCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: kActivatedCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomBarColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
