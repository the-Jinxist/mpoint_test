import 'dart:ui';

import 'package:flutter/material.dart';

class SearchActions extends StatelessWidget {
  const SearchActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final actionsBackground = Colors.white.withOpacity(0.3);

    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _LocalFabs(
            actionsBackground: actionsBackground,
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _LocalFabs(
                actionsBackground: actionsBackground,
                icon: const Icon(
                  Icons.directions,
                  color: Colors.white,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: actionsBackground,
                ),
                clipBehavior: Clip.antiAlias,
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10.0,
                    sigmaY: 10.0,
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.align_horizontal_left_rounded,
                        color: Colors.white,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "List of Variants",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _LocalFabs extends StatelessWidget {
  const _LocalFabs(
      {super.key, required this.actionsBackground, required this.icon});

  final Color actionsBackground;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: actionsBackground,
        shape: BoxShape.circle,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 10.0,
        ),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.transparent,
          child: icon,
        ),
      ),
    );
  }
}
