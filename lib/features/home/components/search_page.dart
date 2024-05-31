import 'package:flutter/material.dart';
import 'package:moniepoint_test/shared/widgets/map_search_field.dart';
import 'package:moniepoint_test/shared/widgets/search_actions.dart';
import 'package:moniepoint_test/utils/generate_map_pins.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            child: Container(
              height: double.infinity,
              width: constraints.maxWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/png/map2.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    color: Colors.black.withOpacity(0.6),
                  ),
                  ...generateMapPins(),
                  const Positioned(
                    top: 60,
                    left: 40,
                    right: 40,
                    child: MapSearchField(),
                  ),
                  const Positioned(
                    bottom: kBottomNavigationBarHeight + 50,
                    left: 40,
                    right: 40,
                    child: SearchActions(),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
