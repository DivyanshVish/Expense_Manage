import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects/screens/add_expence/view/expence.dart';
import 'package:projects/screens/home/stats/stats.dart';
import 'package:projects/screens/home/view/main_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
            // developer.log(value.toString());
          },
          backgroundColor: Colors.grey.shade100,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 1,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                color: selectedIndex == 0
                    ? Theme.of(context).colorScheme.tertiary
                    : Theme.of(context).colorScheme.outline,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.graph_square_fill,
                color: selectedIndex == 1
                    ? Theme.of(context).colorScheme.tertiary
                    : Theme.of(context).colorScheme.outline,
              ),
              label: 'States',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddExpenceScreen(),
            ),
          );
        },
        shape: const CircleBorder(),
        child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.tertiary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.primary,
                ],
                transform: const GradientRotation(pi / 4),
              ),
            ),
            child: const Icon(CupertinoIcons.add)),
      ),
      body: selectedIndex == 0 ? const MainScreen() : const StatsScreen(),
    );
  }
}
