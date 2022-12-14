import 'package:flutter/material.dart';

import 'package:gallery/Widgets/picture_items.dart';
import 'package:provider/provider.dart';

import '../Provider/picture_file.dart';
import '../Provider/pictures.dart';

class EachDepartmentWidget extends StatelessWidget {
  var isFav;
  // SoftGrid(this.isFav, {Key? key}) : super(key: key);
  // static const routeName = '/soft-grid';

  final List<Picture> depPic;

  EachDepartmentWidget({required this.depPic});

  @override
  Widget build(BuildContext context) {
    final picFile = Provider.of<PicturesFile>(context);
    // final softPic = isFav ? picFile.isFavOnly : picFile.softOnly;

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
            value: depPic[i],
            child: const PicturesItem(
                // name: picture[i].name,
                // image: picture[i].image,
                )),
        itemCount: depPic.length,
      ),
    );
  }
}
