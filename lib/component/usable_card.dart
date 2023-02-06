import 'package:flutter/material.dart';
import '../constants.dart';

class UsableCard extends StatelessWidget {
  final Color color;
  final EdgeInsetsGeometry margin;
  final Widget? child;

  UsableCard(
      {this.child,
      this.color = Colors.white,
      this.margin = const EdgeInsets.all(12)});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(
            color: kDroppedShadow,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 3.0,
          ),
        ],
      ),
      child: child,
    );
  }
}
