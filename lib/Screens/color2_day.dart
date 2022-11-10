import 'package:flutter/material.dart';
import 'package:gallery/Provider/picture_file.dart';
import 'package:gallery/Screens/top_row.dart';
import 'package:provider/provider.dart';

class DaysPicturesScreen extends StatelessWidget {
  const DaysPicturesScreen({Key? key}) : super(key: key);
  static const routeName = '/days-pics-screen';
  @override
  Widget build(BuildContext context) {
    final pics = Provider.of<PicturesFile>(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 20,
            forceElevated: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'Assets/Images/university_pic.jpg',
                fit: BoxFit.cover,
              ),
              title: const Text('Event Pictures'),
              // titlePadding:const EdgeInsets.only(bottom:50),
              collapseMode: CollapseMode.pin,
              centerTitle: true,
            ),
            floating: true,
            pinned: true,
            backgroundColor: Colors.black54,
            expandedHeight: MediaQuery.of(context).size.height * 0.5,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(TopRow.routeName);
              },
            ),
          ),
          buildImages(pics.dayPics.length, pics),
        ],
      ),
    );
  }
}

Widget buildImages(int itemCount, PicturesFile picsFile) => SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: GridView.builder(
          primary: false,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 10,
          ),
          itemCount: itemCount,
          itemBuilder: (context, i) => ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: GridTile(
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                title: Text(
                  picsFile.dayPics[i].description,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'QuickSand',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              child: Image.asset(
                picsFile.dayPics[i].image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
