// ignore_for_file: prefer_const_constructors

import 'package:bmi_claculator/component/usable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_claculator/constants.dart';
import 'main_page.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: UsableCard(
              color: kGenderCard,
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 4),
                    child: Text(
                      resultCases[cb.indexForRes()],
                      style: TextStyle(
                        fontSize: 20,
                        color: resultColors[cb.indexForRes()],
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1, bottom: 4),
                    child: Text(
                      cb.getNumRes(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: resultTitle[cb.indexForRes()] +
                                  ' BMI range:\n',
                              style: kResultMainText),
                          TextSpan(
                            text: ranges[cb.indexForRes()] + ' Kg/m',
                            style: kResultMainText.copyWith(
                              color: kInactiveIcon,
                            ),
                          ),
                          WidgetSpan(
                              child: Transform.translate(
                            offset: Offset(2, -4),
                            child: Text(
                              '2',
                              style: kResultMainText.copyWith(
                                color: kInactiveIcon,
                              ),
                              textScaleFactor: 0.7,
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 8, 32, 0),
                    child: Text(
                      advices[cb.indexForRes()],
                      softWrap: true,
                      style: kResultMainText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: MaterialButton(
                      elevation: 6,
                      minWidth: double.infinity,
                      onPressed: () {},
                      color: Color(0xFF191a2e),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Text(
                            'SAVE RESULT',
                            style: kResultMainText,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.topCenter,
              color: kBottomButton,
              height: 85,
              child: Center(
                child: Text(
                  'RE-CALCULATE YOUR BMI',
                  style: kCalculateButton,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
