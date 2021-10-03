import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Components/reusable_content.dart';
import 'package:bmi_calculator/Components/button_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmi,
      @required this.interpretation,
      @required this.overview});
  final String bmi;
  final String overview;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'YOUR RESULT',
                style: ktextstyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableClass(
              colour: kActiveColour,
              checkchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(overview.toUpperCase(), style: kWeightstyyle),
                  Text(
                    bmi,
                    style: kBMItextStyle2,
                  ),
                  Text(
                    interpretation.toUpperCase(),
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
