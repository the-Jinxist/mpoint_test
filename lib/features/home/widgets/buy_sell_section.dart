import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moniepoint_test/shared/theme/colors.dart';
import 'package:moniepoint_test/shared/widgets/animated_text.dart';

class BuySellSection extends StatelessWidget {
  const BuySellSection({
    super.key,
    required this.halfWidth,
  });

  final double halfWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: halfWidth,
            width: halfWidth,
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryColor,
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "BUY",
                  style: TextStyle(color: Colors.white),
                ),
                Column(
                  children: [
                    AnimatedText(
                      begin: 0,
                      end: 5023,
                      separator: " ",
                      duration: Duration(seconds: 3),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      "offers",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox()
              ],
            ),
          ),
          Container(
            height: halfWidth,
            width: halfWidth,
            clipBehavior: Clip.antiAlias,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 25.0,
                sigmaY: 25.0,
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "RENT",
                    style: TextStyle(color: kAlternateTextColor),
                  ),
                  Column(
                    children: [
                      AnimatedText(
                        begin: 0,
                        end: 1034,
                        separator: " ",
                        duration: Duration(seconds: 3),
                        style: TextStyle(
                          color: kAlternateTextColor,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "offers",
                        style: TextStyle(color: kAlternateTextColor),
                      ),
                    ],
                  ),
                  SizedBox()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
