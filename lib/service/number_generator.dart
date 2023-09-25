import 'dart:math';

class NumberGenerator {
  static int numberGenerator(int max) {
    Random random = Random();
    return random.nextInt(max);
  }
}
