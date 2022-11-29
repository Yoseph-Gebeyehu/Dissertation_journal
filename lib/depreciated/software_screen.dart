import 'package:flutter/material.dart';
import 'package:gallery/Screens/top_row.dart';
import 'package:gallery/Widgets/d3_soft_only_grid.dart';
// import 'package:gallery/Widgets/top_row.dart';

import '../Widgets/drawer.dart';

class SoftScreen extends StatefulWidget {
  static const routeName = '/soft-Screen';

  const SoftScreen({Key? key}) : super(key: key);

  // const ChemScreen({Key? key}) : super(key: key);

  @override
  State<SoftScreen> createState() => _SoftScreenState();
}

class _SoftScreenState extends State<SoftScreen> {
  var isFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        width: 250,
        elevation: 100,
        child: GalleryDrawer(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 1,
        title: const Text(
          'Software ',
        ),
      ),
      body: Column(
        children: [
          const TopRow(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: SoftGrid(isFav),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        color: Colors.purple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  isFav = true;
                });
              },
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.card_travel,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.image,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
