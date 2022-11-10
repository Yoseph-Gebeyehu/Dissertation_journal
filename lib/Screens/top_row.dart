import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gallery/Screens/home_chem.dart';
import 'package:gallery/Screens/home_elec.dart';
import 'package:gallery/Screens/home_soft.dart';
import 'package:provider/provider.dart';

import 'package:gallery/Provider/pictures.dart';
import 'package:gallery/Provider/theme_data.dart';
import 'package:gallery/Screens/favorite_screen.dart';
import 'package:gallery/Screens/search.dart';
import 'package:gallery/Widgets/chem_only_grid.dart';
import 'package:gallery/Widgets/elec_only_grid.dart';
import 'package:gallery/Widgets/soft_only_grid.dart';
import '../Provider/picture_file.dart';
import '/Widgets/drawer.dart';

class TopRow extends StatefulWidget {
  const TopRow({Key? key}) : super(key: key);
  static const routeName = '/top-row';

  @override
  State<TopRow> createState() => _TopRowState();
}

class _TopRowState extends State<TopRow> {
  int currentIndex = 0;
  var isFav = false;
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
    final pic = Provider.of<PicturesFile>(context);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: const Drawer(
          width: 250,
          elevation: 100,
          child: GalleryDrawer(),
        ),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: ((context, innerBoxIsScrolled) => [
                SliverAppBar(
                  floating: true,
                  snap: true,
                  shadowColor: const Color.fromARGB(255, 0, 15, 153),
                  flexibleSpace: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 0, 64, 241),
                              Color.fromARGB(255, 0, 15, 153),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                    ),
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(20),
                    ),
                    side: BorderSide(
                      width: 2,
                      color: Color.fromARGB(163, 255, 255, 255),
                    ),
                  ),
                  bottom: const TabBar(
                    padding: EdgeInsets.only(left: 15),
                    indicatorColor: Colors.white,
                    isScrollable: true,
                    labelStyle: TextStyle(
                      fontFamily: 'QuickSand',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    labelColor: Colors.yellow,
                    unselectedLabelColor: Colors.white,
                    tabs: [
                      Tab(text: 'All'),
                      Tab(text: 'Electrical'),
                      Tab(text: 'Chemical'),
                      Tab(text: 'Software'),
                    ],
                  ),
                  elevation: 1,
                  backgroundColor:
                      Theme.of(context).appBarTheme.backgroundColor,
                  title: const Text(
                    'AASTU',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {
                        showSearch(
                          context: context,
                          delegate: NewSearch(pic),
                        );
                      },
                      icon: const Icon(Icons.search),
                    ),
                    Consumer<ThemeSetting>(
                      builder: (context, value, child) {
                        return IconButton(
                          onPressed: () {
                            value.toggleTheme();
                          },
                          icon: Icon(
                            value.darkTheme
                                ? Icons.light_mode
                                : Icons.dark_mode,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ]),
          body: Column(
            children: [
              // Divider(),
              Expanded(
                child: Consumer<Picture>(
                  builder: (context, value, child) {
                    return TabBarView(
                      children: [
                        Tab(
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              ElecDep(),
                              SoftDep(),
                              ChemDep(),
                            ],
                          ),
                        ),
                        Tab(
                          child: ElecGrid(isFav),
                        ),
                        Tab(
                          child: ChemGrid(isFav),
                        ),
                        Tab(
                          child: SoftGrid(isFav),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
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
