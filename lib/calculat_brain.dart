import 'dart:math';

class CalculateBrain {
  final int height;
  final int weight;

  CalculateBrain({this.weight = 1, this.height = 1});

  String getNumRes() {
    double bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  int indexForRes() {
    int i = 5;
    double f = double.parse(getNumRes());
    if (f < 18.5) {
      i = 0;
    } else if (18.5 <= f && f <= 25) {
      i = 1;
    } else if (25.1 <= f && f <= 30) {
      i = 2;
    } else if (30.1 <= f && f <= 35) {
      i = 3;
    } else if (35 < f) {
      i = 4;
    }

    return i;
  }
}
