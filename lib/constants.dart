// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

const kBottomButton = Color(0xFFEA1556);
const kGenderCard = Color(0xFF1d1f33);
const kComponentCard = Color(0xFF111428);
const kDroppedShadow = Color(0xFF0C0E1C);
const kActiveIcon = Color(0xffffffff);
const kInactiveIcon = Color(0xFF8d8e98);
const kMainTextStyle = TextStyle(
  color: kInactiveIcon,
  fontSize: 18,
  fontWeight: FontWeight.w500,
);
const kCalculateButton = TextStyle(
  color: kActiveIcon,
  fontSize: 20,
  fontWeight: FontWeight.w400,
  wordSpacing: 2.5,
);
const kNumberTextStyle = TextStyle(
  color: kActiveIcon,
  fontSize: 56,
  fontWeight: FontWeight.bold,
);
const kMarkers = TextStyle(fontWeight: FontWeight.w400, fontSize: 60);
const kSliderThemeData = SliderThemeData(
  thumbColor: Color(0xFFeb1555),
  overlayColor: Color(0x29eb1555),
  activeTrackColor: kActiveIcon,
  inactiveTrackColor: kInactiveIcon,
  trackHeight: 2.5,
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13.0),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 26.0),
);

const kResultMainText = TextStyle(fontSize: 20, fontWeight: FontWeight.w500);

var resultCases = [
  'UNDERWEIGHT',
  'NORMAL',
  'OVERWEIGHT',
  'OBESE',
  'EXTREMELY OBESE'
];

var resultColors = [
  Color(0xFF87b1d9),
  Color(0xFF3dd365),
  Color(0xFFeee133),
  Color(0xFFfd802e),
  Color(0xFFf95353),
];

var resultTitle = [
  'Underweight',
  'Normal',
  'Overweight',
  'Obese',
  'Extremely Obese'
];

var ranges = [' ... < 18.5', '18.5 - 25', '25.1 - 30', '30.1 - 35', '35 < ...'];

var advices = [
  'You have a less body weight. You have to eat more!',
  'You have a normal body weight. Good job!',
  'Maybe an extra body weight demands some going to GYM.',
  'Train, in addition to some diets.',
  'You have to make a lot of effort to get rid of that WEIGHT.'
];
