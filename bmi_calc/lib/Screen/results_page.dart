import 'package:bmi_calc/Components/reusable_card.dart';
import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';
import '../Components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  // ResultPage(
  //     {@required this.interpretation,
  //     @required this.bmiResult,
  //     @required this.resultText});
      
  // final String bmiResult;
  // final String resultText;
  // final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CACULATOR'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                customColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      // resultText.toUpperCase(),
                      'normal',
                      style: kResultTextStyle,
                    ),
                    Text(
                      // bmiResult,
                      '10.0',
                      style: kBMITextStyle,
                    ),
                    Text(
                      // interpretation,
                      'khoe vcl',
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              txtTitle: 'RE-CACULATE',
              onPress: () {
                Navigator.pop(context);
              },
            )
          ]),
    );
  }
}
