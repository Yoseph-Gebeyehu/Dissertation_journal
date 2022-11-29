import 'package:flutter/material.dart';
import 'package:gallery/Provider/picture_file.dart';
import 'package:gallery/Widgets/all_department_widget.dart';
import 'package:provider/provider.dart';

class ElecDep extends StatefulWidget {
  @override
  State<ElecDep> createState() => _ElecDepState();
}

class _ElecDepState extends State<ElecDep> {
  // const ElecDep({Key? key}) : super(key: key);
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    final pic = Provider.of<PicturesFile>(context).elecOnly;
    return AllDepartmentWidget(isFav, 'Electrical Engineering', pic, () => null);
  }
}
