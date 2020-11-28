import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'utilities.dart';

const String activeCardColor = '#1d1e33';
const String inactiveCardColor = '#112328';
const String bottomColor = '#f05454';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Utility utility = Utility();

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      customColor: selectedGender == Gender.male
                          ? utility.getColor(activeCardColor)
                          : utility.getColor(inactiveCardColor),
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        selectedGender = Gender.female;
                      },
                    );
                  },
                  child: ReusableCard(
                    customColor: selectedGender == Gender.female
                        ? utility.getColor(activeCardColor)
                        : utility.getColor(inactiveCardColor),
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                )),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            customColor: utility.getColor(activeCardColor),
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  customColor: utility.getColor(activeCardColor),
                )),
                Expanded(
                  child: ReusableCard(
                    customColor: utility.getColor(activeCardColor),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: utility.getColor(bottomColor),
            margin: EdgeInsets.only(top: 10.0),
            height: 80.0,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
