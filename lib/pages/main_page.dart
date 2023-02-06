// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_claculator/calculat_brain.dart';
import 'package:bmi_claculator/pages/result_page.dart';
import 'package:flutter/material.dart';
import '../component/usable_card.dart';
import '../constants.dart';
import '../component/gender_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../component/bottem_button.dart';

enum Gender {
  male,
  female,
}

Gender selectedGender = Gender.male;
int height = 180;
int weight = 60;
int age = 18;

CalculateBrain cb = CalculateBrain();

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color maleColor = kActiveIcon;
  Color femaleColor = kInactiveIcon;

  void taper(Gender taper) {
    setState(() {
      if (taper == Gender.male) {
        selectedGender = Gender.male;

        maleColor = kActiveIcon;
        femaleColor = kInactiveIcon;
      } else if (taper == Gender.female) {
        selectedGender = Gender.female;
        femaleColor = kActiveIcon;
        maleColor = kInactiveIcon;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("BMI CALCULATOR")),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          taper(Gender.male);
                          print('male selected');
                        });
                      },
                      child: UsableCard(
                        margin: EdgeInsets.fromLTRB(20, 20, 3, 16),
                        color: kGenderCard,
                        child: GenderIcon(
                          color: maleColor,
                          gender: Gender.male,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          taper(Gender.female);
                          print('female selected');
                        });
                      },
                      child: UsableCard(
                        margin: EdgeInsets.fromLTRB(3, 20, 20, 16),
                        color: kGenderCard,
                        child: GenderIcon(
                          color: femaleColor,
                          gender: Gender.female,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: UsableCard(
                color: kComponentCard,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kMainTextStyle,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$height',
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kMainTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: kSliderThemeData,
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                        min: 50,
                        max: 220,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: UsableCard(
                      margin: EdgeInsets.fromLTRB(20, 0, 3, 20),
                      color: kComponentCard,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kMainTextStyle,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '$weight',
                                style: kNumberTextStyle,
                              ),
                              Text(
                                'KG',
                                style: kMainTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                elevation: 2.5,
                                shape: const CircleBorder(),
                                fillColor: const Color(0xFF1c1f32),
                                constraints: const BoxConstraints.tightFor(
                                    width: 56, height: 56),
                                onPressed: () {
                                  setState(() {
                                    if (weight > 6) weight--;
                                  });
                                },
                                child: const Icon(FontAwesomeIcons.minus,
                                    size: 30),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RawMaterialButton(
                                elevation: 2.5,
                                shape: const CircleBorder(),
                                fillColor: const Color(0xFF1c1f32),
                                constraints: const BoxConstraints.tightFor(
                                    width: 56, height: 56),
                                onPressed: () {
                                  setState(() {
                                    if (weight < 300) weight++;
                                  });
                                },
                                child: const Icon(
                                  FontAwesomeIcons.plus,
                                  size: 30,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: UsableCard(
                      margin: EdgeInsets.fromLTRB(3, 0, 20, 20),
                      color: kComponentCard,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kMainTextStyle,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '$age',
                                style: kNumberTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                elevation: 2.5,
                                shape: const CircleBorder(),
                                fillColor: const Color(0xFF1c1f32),
                                constraints: const BoxConstraints.tightFor(
                                    width: 56, height: 56),
                                onPressed: () {
                                  setState(() {
                                    if (age > 1) age--;
                                  });
                                },
                                child: const Icon(FontAwesomeIcons.minus,
                                    size: 30),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RawMaterialButton(
                                elevation: 2.5,
                                shape: const CircleBorder(),
                                fillColor: const Color(0xFF1c1f32),
                                constraints: const BoxConstraints.tightFor(
                                    width: 56, height: 56),
                                onPressed: () {
                                  setState(() {
                                    if (age < 200) age++;
                                  });
                                },
                                child: const Icon(
                                  FontAwesomeIcons.plus,
                                  size: 30,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                cb = CalculateBrain(weight: weight, height: height);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ResultPage()));
              },
              child: Container(
                alignment: Alignment.topCenter,
                color: kBottomButton,
                height: 85,
                child: Center(
                  child: Text(
                    'CALCULATE YOUR BMI',
                    style: kCalculateButton,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
