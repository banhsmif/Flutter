import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onPress, this.txtTitle});
  final Function onPress;
  final String txtTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(
        child: Center(
          child: Text(
            txtTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        padding: EdgeInsets.only(bottom: 10.0),
        color: Color(0xffeb1555),
        margin: EdgeInsets.only(top: 10.0),
        height: 60.0,
        width: double.infinity,
      ),
    );
  }
}