import 'package:flutter/material.dart';
import 'package:gallery/Widgets/each_department_widget.dart';

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

    return EachDepartmentWidget(depPic: chemPic);
  }
}
