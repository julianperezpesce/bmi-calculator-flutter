import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/card_reusable.dart';
import 'input_page.dart';
import '../components/bottom_button.dart';
import 'calculate.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    @required this.bmiResult,
    @required this.interpretation,
    @required this.resultText
   });

  final String bmiResult;
  final String resultText;
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
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  resultText,
//                  '${weightCondition}',
                  style: kWeightConditionStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CardReusable(
              colores: kActiveColorCard,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiResult,
                    style: kWeightResultStyle,
                  ),
                  Text(
                    interpretation,
                    style: kUnderResultStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (
                      context,
                    ) {
                      return InputPage();
                    },
                  ),
                );
              },
              buttonTitle: 'Recalculate'),
        ],
      ),
    );
  }
}
