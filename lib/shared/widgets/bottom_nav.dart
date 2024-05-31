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
        return Container(
          height: 70,
          width: constraints.maxWidth,
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: kBottomNavBarBg,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    duration: const Duration(milliseconds: 500),
                    child: CircleAvatar(
                      radius: currentIndex == index ? 30 : 23,
                      backgroundColor: currentIndex == index
                          ? kPrimaryColor
                          : kBottomNavIconBg,
                      child: _icons[index],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
