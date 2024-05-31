import 'dart:math';

import 'package:flutter/material.dart';
import 'package:moniepoint_test/shared/widgets/pins.dart';

List<Align> generateMapPins() {
  List<Align> pins = [];

  for (int i = 0; i < 2; i++) {
    Random random = Random.secure();

    final randomX = random.nextDouble();
    final randomY = random.nextDouble();

    final pin = Align(
      alignment: Alignment(randomX, randomY),
      child: const Pin(),
    );

    pins.add(pin);
  }

  for (int i = 0; i < 2; i++) {
    Random random = Random.secure();

    final randomX = random.nextDouble();
    final randomY = random.nextDouble();

    final pin = Align(
      alignment: Alignment(randomX, randomY * -1),
      child: const Pin(),
    );

    pins.add(pin);
  }

  for (int i = 0; i < 2; i++) {
    Random random = Random.secure();

    final randomX = random.nextDouble();
    final randomY = random.nextDouble();

    final pin = Align(
      alignment: Alignment(randomX * -1, randomY * -1),
      child: const Pin(),
    );

    pins.add(pin);
  }

  return pins;
}
