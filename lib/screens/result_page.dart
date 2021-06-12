import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';


class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiresult,
      @required this.resulttext,
      @required this.interpret});
  final String bmiresult;
  final String resulttext;
  final String interpret;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                "YOUR RESULT",
                style: KLargelabeltext,
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: KActiveCardcolour,
                cardChild: Container(
                  margin: EdgeInsets.symmetric(vertical: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(resulttext.toUpperCase(), style: KBmistatus),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        bmiresult,
                        style: KResult,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Normal BMI range:",
                        style: KLabeltextstyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "18.5 - 25 kg/m2",
                        style: KRange,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        interpret,
                        style: KRange,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Re-Calculate Your BMI",
                    style: KLargelabeltextbutton,
                  ),
                ),
                height: KBottomContainerHeight,
                color: KBottomContainerColour,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
