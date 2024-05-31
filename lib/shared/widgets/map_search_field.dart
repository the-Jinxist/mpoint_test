import 'package:flutter/material.dart';
import 'package:moniepoint_test/shared/theme/colors.dart';

class MapSearchField extends StatelessWidget {
  const MapSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            child: TextField(
              controller: TextEditingController(),
              decoration: const InputDecoration(
                hintText: "Saint Petersburg..",
                prefixIcon: Icon(
                  Icons.search,
                  color: kBottomNavIconBg,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: Icon(
            Icons.settings,
          ),
        )
      ],
    );
  }
}
