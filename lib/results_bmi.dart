import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {super.key,
      required this.bmiInterpretation,
      required this.bmiResult,
      required this.getResult});

  String? bmiResult;
  String getResult;
  String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              reusableCardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    getResult.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult!.toUpperCase(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 100.0),
                  ),
                  Text(
                    bmiInterpretation,
                    style: const TextStyle(fontSize: 22.0),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: const Color(0xFFEB1555),
              height: 80.0,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.only(bottom: 10.0),
              child: const Center(
                  child: Text(
                'RE-CALCULATE',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
