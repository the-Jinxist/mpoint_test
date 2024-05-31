import 'package:flutter/material.dart';
import 'package:moniepoint_test/shared/theme/colors.dart';
import 'package:moniepoint_test/shared/widgets/home_bar.dart';

class HomeWelcomeSection extends StatelessWidget {
  const HomeWelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeBar(),
          SizedBox(
            height: 30,
          ),
          Text(
            "Hi, Marina",
            style: TextStyle(
              color: kAlternateTextColor,
              fontSize: 20,
            ),
          ),
          Text(
            "let's select your\nperfect place",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 30,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
