import 'package:flutter/material.dart';
import 'package:moniepoint_test/shared/theme/colors.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            children: [
              Icon(
                Icons.share_location,
                size: 15,
                color: kAlternateTextColor,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Saint Petersburg",
                style: TextStyle(color: kAlternateTextColor),
              ),
            ],
          ),
        ),
        const CircleAvatar(
          backgroundColor: kPrimaryColor,
          radius: 15,
          child: Icon(
            Icons.person_3_rounded,
            size: 15,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
