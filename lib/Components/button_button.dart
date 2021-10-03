import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonTitle, @required this.onTap});

  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kCalculatetextStyle,
          ),
        ),
        color: kbottomContainerColour,
        height: kContainerHeight,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}
