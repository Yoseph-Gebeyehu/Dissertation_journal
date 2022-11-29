import 'package:flutter/material.dart';
import 'package:gallery/Provider/picture_file.dart';
import 'package:gallery/Widgets/all_department_widget.dart';
import 'package:provider/provider.dart';

class SoftDep extends StatelessWidget {
  // const SoftDep({Key? key}) : super(key: key);
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    final pic = Provider.of<PicturesFile>(context).softOnly;
    return AllDepartmentWidget(isFav, 'Software Engineering', pic, () => null);
  }
}
