import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:moniepoint_test/features/home/widgets/buy_sell_section.dart';
import 'package:moniepoint_test/features/home/widgets/home_welcome_section.dart';
import 'package:moniepoint_test/features/home/widgets/places.dart';
import 'package:moniepoint_test/shared/theme/colors.dart';
import 'package:moniepoint_test/utils/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        final halfWidth = getHalfWidthPlusSpace(constraints);

        return Container(
          height: double.infinity,
          width: constraints.maxWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromRGBO(248, 248, 248, 1),
                kPrimaryColor.withOpacity(0.2),
              ],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
              stops: const [0.4, 0.9],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const HomeWelcomeSection(),
                const SizedBox(
                  height: 25,
                ),
                BuySellSection(halfWidth: halfWidth),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 3,
                    vertical: 3,
                  ),
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    children: [
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.2,
                        child: Places(
                          image: "home_one".toJPG(),
                          title: "Gladkova St, 25.",
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Places(
                          image: "home_two".toJPG(),
                          title: "Gladkova St, 26.",
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Places(
                          image: "home_three".toJPG(),
                          title: "Gladkova St, 27.",
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: Places(
                          image: "home_four".toJPG(),
                          title: "Alakija St. No 29",
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: Places(
                          image: "home_five".toJpeg(),
                          title: "Alakija St. No 29",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  double getHalfWidthPlusSpace(BoxConstraints constraints) =>
      constraints.maxWidth / 2 - 25;
}
