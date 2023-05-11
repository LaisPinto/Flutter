import 'dart:math';

class DistanceModel {
  double? x1 = 1.0;
  double? y1 = 2.0;
  double? x2 = 3.0;
  double? y2 = 4.0;


  DistanceModel({this.x1, this.y1, this.x2, this.y2});

  double distance() => sqrt(pow(x2! - x1!, 2) + pow(y2! - y1!, 2));


  @override
  String toString() {
    return 'Calculo de distancia x1: $x1, y1: $y1, x2: $x2, y2: $y2, distancia: ${distance()}}';
  }
}