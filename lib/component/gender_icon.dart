import 'package:flutter/material.dart';
import '../pages/main_page.dart';
import '../constants.dart';
import 'dart:math';

class GenderIcon extends StatelessWidget {
  final Color color;
  final gender;
  GenderIcon({required this.gender, this.color = kInactiveIcon});

  @override
  Widget build(BuildContext context) {
    IconData icon;
    String name;
    int deg = 0;
    if (gender == Gender.male) {
      icon = Icons.male;
      name = 'MALE';
    } else {
      icon = Icons.female;
      name = 'FEMALE';
      deg = 45;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.rotate(
          angle: deg * pi / 180,
          child: Icon(
            icon,
            size: 100,
            color: color,
          ),
        ),
        SizedBox(
          height: 1,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        )
      ],
    );
  }
}
