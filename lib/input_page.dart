import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_icon.dart';
import 'reusable_card.dart';

const _title = 'BMI Calculator';
const _maleText = 'MALE';
const _femaleText = 'FEMALE';
const _bottomContainerHeight = 80.0;
const _activatedCardColor = Color(0xFF1D1E33);
const _inactiveCardColor = Color(0xFF111328);
const _bottomBarColor = Color(0xFFEB1555);

enum Sex { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Sex selectedSex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSex = Sex.male;
                      });
                    },
                    child: ReusableCard(
                      color: selectedSex == Sex.male ? _activatedCardColor : _inactiveCardColor,
                      cardChild: CardIcon(
                        textData: _maleText,
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSex = Sex.female;
                      });
                    },
                    child: ReusableCard(
                      color: selectedSex == Sex.female ? _activatedCardColor : _inactiveCardColor,
                      cardChild: CardIcon(
                        textData: _femaleText,
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: _activatedCardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: _activatedCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: _activatedCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: _bottomBarColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: _bottomContainerHeight,
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
