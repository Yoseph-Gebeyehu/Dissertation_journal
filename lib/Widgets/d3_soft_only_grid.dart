import 'package:flutter/material.dart';
import 'package:gallery/Widgets/each_department_widget.dart';

import 'package:gallery/Widgets/picture_items.dart';
import 'package:provider/provider.dart';

import '../Provider/picture_file.dart';

class SoftGrid extends StatelessWidget {
  var isFav;
  SoftGrid(this.isFav, {Key? key}) : super(key: key);
  static const routeName = '/soft-grid';

  @override
  Widget build(BuildContext context) {
    final picFile = Provider.of<PicturesFile>(context);
    final softPic = isFav ? picFile.isFavOnly : picFile.softOnly;

    return EachDepartmentWidget(depPic: softPic);
  }
}
