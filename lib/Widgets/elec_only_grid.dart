import 'package:flutter/material.dart';

import 'package:gallery/Widgets/picture_items.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

import '../Provider/picture_file.dart';
// import '/Provider/pictures.dart';

class ElecGrid extends StatelessWidget {
  var isFav;
  ElecGrid(this.isFav, {Key? key}) : super(key: key);
  // const StudentPicsGrid({Key key}) : super(key: key);
  static const routeName = '/elec-grid';
  @override
  Widget build(BuildContext context) {
    final picFile = Provider.of<PicturesFile>(context);
    final electPic = isFav ? picFile.isFavOnly : picFile.elecOnly;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1 / 1,
        mainAxisExtent: 350,
        crossAxisCount: 1,
        crossAxisSpacing: 0,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(
        value: electPic[i],
        child:const  PicturesItem(),
      ),
      itemCount: electPic.length,
    );
  }
}
