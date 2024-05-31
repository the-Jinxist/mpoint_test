import 'package:flutter/material.dart';
import 'package:moniepoint_test/shared/theme/colors.dart';

class Pin extends StatelessWidget {
  const Pin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(8),
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8)),
      ),
      child: const Center(
        child: Icon(
          Icons.pin_drop,
          color: Colors.white,
        ),
      ),
    );
  }
}
