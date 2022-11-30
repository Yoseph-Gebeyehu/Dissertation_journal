import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gallery/Screens/top_row.dart';
import 'package:gallery/Widgets/bottom_nav_bar.dart';
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
      bottomNavigationBar: BottomNavBar1(
        currentIndex: currentIndex,
      ),
    );
  }
}
