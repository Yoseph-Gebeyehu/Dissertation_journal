import 'package:flutter/material.dart';

import 'package:gallery/Widgets/picture_items.dart';
import 'package:provider/provider.dart';

import '../Provider/picture_file.dart';

class ChemGrid extends StatelessWidget {
  var isFav;
  ChemGrid(this.isFav, {Key? key}) : super(key: key);
  // const StudentPicsGrid({Key key}) : super(key: key);
  static const routeName = '/chem-grid';

  @override
  Widget build(BuildContext context) {
    final picFile = Provider.of<PicturesFile>(context);
    final chemPic = isFav ? picFile.isFavOnly : picFile.chemOnly;

    return Padding(
      padding: const EdgeInsets.all(5),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
         childAspectRatio: 1 / 1,
          mainAxisExtent: 350,
          crossAxisCount: 1,
          crossAxisSpacing: 0,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, i) => ChangeNotifierProvider.value(
          value: chemPic[i],
          child:  PicturesItem(),
        ),
        itemCount: chemPic.length,
      ),
    );
  }
}
