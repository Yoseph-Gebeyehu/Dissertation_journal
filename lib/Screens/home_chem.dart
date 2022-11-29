import 'package:flutter/material.dart';
import 'package:gallery/Provider/picture_file.dart';
import 'package:gallery/Widgets/all_department_widget.dart';
import 'package:provider/provider.dart';

class ChemDep extends StatelessWidget {
  // const ChemDep({Key? key}) : super(key: key);
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    final pic = Provider.of<PicturesFile>(context).chemOnly;
    return AllDepartmentWidget(isFav, 'Chemical Engineering', pic, () => null);
  }
}
