import 'package:flutter/material.dart';
import 'package:moniepoint_test/features/home/components/home_page.dart';
import 'package:moniepoint_test/features/home/components/placeholder_page.dart';
import 'package:moniepoint_test/features/home/components/search_page.dart';
import 'package:moniepoint_test/shared/widgets/bottom_nav.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int intialIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: intialIndex,
        children: const [
          SearchPage(),
          PlaceholderPage(),
          HomePage(),
          PlaceholderPage(),
          PlaceholderPage(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: intialIndex,
        onItemTap: (p0) {
          setState(() {
            intialIndex = p0;
          });
        },
      ),
    );
  }
}
