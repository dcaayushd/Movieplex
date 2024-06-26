import 'package:movieplex/constants/constants.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<IconData> bottomIcons = [
    Icons.home_filled,
    CupertinoIcons.compass_fill,
    CupertinoIcons.ticket_fill,
    Icons.person_rounded
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    Widget body() {
      switch (currentPage) {
        case 0:
          return const HomeScreen();
        case 1:
          return Center(
            child: Text(
              'Explore Page',
              style: font.copyWith(fontSize: 32, color: white),
            ),
          );
        case 2:
          return Center(
            child: Text(
              'Tickets Page',
              style: font.copyWith(fontSize: 32, color: white),
            ),
          );
        case 3:
          return Center(
            child: Text(
              'Profile Page',
              style: font.copyWith(fontSize: 32, color: white),
            ),
          );
        default:
          return Center(
              child: Text(
            'Something Wrong !!',
            style: font.copyWith(fontSize: 32, color: white),
          ));
      }
    }

    return Scaffold(
      backgroundColor: black,
      body: body(),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
              bottomIcons.length,
              (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        currentPage = index;
                      });
                    },
                    child: Stack(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          height: currentPage == index ? 24 : 0,
                          width: currentPage == index ? 24 : 0,
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                                color: white.withOpacity(.1),
                                spreadRadius: currentPage == index ? 5 : 0,
                                blurRadius: currentPage == index ? 5 : 0)
                          ]),
                        ),
                        Icon(
                          bottomIcons[index],
                          color: currentPage == index
                              ? white
                              : white.withOpacity(.3),
                        ),
                      ],
                    ),
                  )),
        ),
      ),
    );
  }
}
