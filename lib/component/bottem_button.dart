import 'package:flutter/material.dart';
import 'package:bmi_claculator/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.title, required this.onPress()});

  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress.call(),
      child: Container(
        alignment: Alignment.topCenter,
        color: kBottomButton,
        padding: EdgeInsets.only(bottom: 21.5),
        height: 85,
        child: Center(
          child: Text(
            title,
            style: kCalculateButton,
          ),
        ),
      ),
    );
  }
}
