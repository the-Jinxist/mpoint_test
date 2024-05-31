import 'package:flutter/material.dart';
import 'package:moniepoint_test/shared/theme/colors.dart';

const _iconSize = 20.0;
const _icons = [
  Icon(
    Icons.search,
    color: Colors.white,
    size: _iconSize,
  ),
  Icon(
    Icons.message_outlined,
    color: Colors.white,
    size: _iconSize,
  ),
  Icon(
    Icons.home_work,
    color: Colors.white,
    size: _iconSize,
  ),
  Icon(
    Icons.favorite,
    color: Colors.white,
    size: _iconSize,
  ),
  Icon(
    Icons.person_4_rounded,
    color: Colors.white,
    size: _iconSize,
  ),
];

class BottomNavBar extends StatefulWidget {
  final Function(int) onItemTap;
  final int currentIndex;

  const BottomNavBar({
    super.key,
    required this.onItemTap,
    required this.currentIndex,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    currentIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 62,
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
              decoration: BoxDecoration(
                color: kBottomNavBarBg,
                borderRadius: BorderRadius.circular(31),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  _icons.length,
                  (index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });

                        widget.onItemTap(index);
                      },
                      child: AnimatedContainer(
                        height: currentIndex == index ? 58 : 40,
                        width: currentIndex == index ? 58 : 40,
                        duration: const Duration(milliseconds: 500),
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? kPrimaryColor
                              : kBottomNavIconBg,
                          shape: BoxShape.circle,
                        ),
                        child: _icons[index],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
