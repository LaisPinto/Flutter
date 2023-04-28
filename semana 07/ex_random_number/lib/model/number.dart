import 'dart:math';

class Number {
  static int generateRandomNumber() {
    Random random = Random();
    return random.nextInt(100);
  }
}