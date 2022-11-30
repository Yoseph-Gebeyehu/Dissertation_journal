import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gallery/Screens/personal_info.dart';

import '../Screens/favorite_screen.dart';
import '../Screens/top_row.dart';

class BottomNavBar1 extends StatefulWidget {
  // const BottomNavBar1({Key? key}) : super(key: key);

  int currentIndex;
  var isFav = false;

  List icon = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.person_rounded,
  ];

  List pages = [
    const TopRow(),
    FavoriteScreen(),
    const PersonalInfo(),
  ];

  BottomNavBar1({required this.currentIndex});
  @override
  State<BottomNavBar1> createState() => _BottomNavBar1State();
}

class _BottomNavBar1State extends State<BottomNavBar1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              color: const Color.fromARGB(255, 185, 185, 185).withOpacity(0.25),
              boxShadow: [
                BoxShadow(
                    color: const Color.fromARGB(255, 110, 109, 109)
                        .withOpacity(0.2),
                    blurRadius: 30,
                    offset: const Offset(0, 10))
              ],
              borderRadius: BorderRadius.circular(50),
            ),
            child: ListView.builder(
              itemCount: widget.icon.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(
                    () {
                      widget.currentIndex = index;
                      // Navigator.of(context).pushReplacementNamed(routeName)
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) {
                            return widget.pages[widget.currentIndex];
                          },
                        ),
                      );
                    },
                  );
                },
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Center(
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          height: index == widget.currentIndex ? 40 : 0,
                          width: index == widget.currentIndex ? 70 : 0,
                          decoration: BoxDecoration(
                              color: index == widget.currentIndex
                                  ? Theme.of(context).accentColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.32,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      alignment: Alignment.center,
                      child: Icon(widget.icon[index],
                          size: 30,
                          color: index == widget.currentIndex
                              ? const Color.fromARGB(255, 0, 15, 153)
                              : const Color.fromARGB(255, 179, 177, 177)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
