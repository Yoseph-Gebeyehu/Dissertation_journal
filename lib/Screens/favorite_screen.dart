import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gallery/Screens/top_row.dart';
import 'package:gallery/Widgets/picture_items.dart';

import 'package:provider/provider.dart';

import '../Provider/picture_file.dart';

class FavoriteScreen extends StatefulWidget {
  // const FavoriteScreen({Key? key}) : super(key: key);
  static const routeName = '/favorite-screen';


  FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  var isFav = true;

  int currentIndex = 1;

  List icon = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.person_rounded,
  ];

  List pages = [
    TopRow(),
    FavoriteScreen(),
    TopRow(),
  ];

  @override
  Widget build(BuildContext context) {
    final picFile = Provider.of<PicturesFile>(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Favorite Pictures',
          style: TextStyle(
            fontFamily: 'QuickSand',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: picFile.isFavOnly.isEmpty
            ? const Center(
                child: Text(
                  'You have not favorite Picture!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'QuickSand',
                  ),
                ),
              )
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 1,
                  mainAxisExtent: 350,
                  crossAxisCount: 1,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, i) {
                  return ChangeNotifierProvider.value(
                    value: picFile.isFavOnly[i],
                    child: const PicturesItem(),
                  );
                },
                itemCount: picFile.isFavOnly.length,
              ),
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  color: Color.fromARGB(255, 185, 185, 185).withOpacity(0.25),
                  boxShadow: [
                    BoxShadow(
                        color:
                            Color.fromARGB(255, 110, 109, 109).withOpacity(0.2),
                        blurRadius: 30,
                        offset: const Offset(0, 10))
                  ],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: ListView.builder(
                    itemCount: icon.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                      
                      onTap: () {
                        setState(
                          () {
                            currentIndex = index;
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return pages[currentIndex];
                                },
                              ),
                            );
                          },
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: 82,
                            child: Center(
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                height: index == currentIndex ? 40 : 0,
                                width: index == currentIndex ? 70 : 0,
                                decoration: BoxDecoration(
                                    color: index == currentIndex
                                        ? Color.fromARGB(255, 3, 212, 202)
                                            .withOpacity(.2)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                            ),
                          ),
                          Container(
                            width: 82,
                            alignment: Alignment.center,
                            child: Icon(icon[index],
                                size: 30,
                                color: index == currentIndex
                                    ? Color.fromARGB(255, 1, 96, 109)
                                    : Color.fromARGB(255, 179, 177, 177)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}
