import 'package:flutter/material.dart';

import 'package:gallery/Widgets/picture_items.dart';
import 'package:provider/provider.dart';

import '../Provider/picture_file.dart';

class StudentPicsGrid extends StatelessWidget {
  var isFav;
  StudentPicsGrid(this.isFav);
  // const StudentPicsGrid({Key key}) : super(key: key);
  static const routeName = '/student-pics-grid';
  @override
  Widget build(BuildContext context) {
    final picFile = Provider.of<PicturesFile>(context);

    final picture = isFav ? picFile.isFavOnly : picFile.pics;

    return Padding(
      padding: const EdgeInsets.all(5),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1 / 1,
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, i) => ChangeNotifierProvider.value(
          value: picture[i],
          child: const PicturesItem(),
        ),
        itemCount: picture.length,
      ),
    );
  }
}
