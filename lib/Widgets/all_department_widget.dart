import 'package:flutter/material.dart';
import 'package:gallery/Provider/pictures.dart';
import 'package:gallery/Screens/pictues_detail.dart';

class AllDepartmentWidget extends StatefulWidget {
  final bool isFav;
  final String depName;
  final List<Picture> pic;
  final Function viewAll;

  AllDepartmentWidget(this.isFav, this.depName, this.pic, this.viewAll);
  @override
  State<AllDepartmentWidget> createState() => _AllDepartmentWidgetState();
}

class _AllDepartmentWidgetState extends State<AllDepartmentWidget> {
  // const ElecDep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final pic = Provider.of<PicturesFile>(context).elecOnly;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.depName,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'QuickSand',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  color: Theme.of(context).textTheme.bodyText1?.color!,
                ),
              ),
              GestureDetector(
                onTap: widget.viewAll(),
                child: const Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.pic.length,
                itemBuilder: (context, index) {
                  Picture student = widget.pic[index];
                  return Container(
                    margin: const EdgeInsets.all(10),
                    width: 210,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Positioned(
                          bottom: 15,
                          child: Container(
                            height: 120.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: IconButton(
                                    icon: Icon(
                                      widget.isFav
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.deepOrange,
                                    ),
                                    onPressed: () {
                                      // setState(() {
                                      //   isFav = !isFav;
                                      // });
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        student.name,
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Theme.of(context)
                                              .appBarTheme
                                              .backgroundColor,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.2,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        student.department,
                                        style: const TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0,
                                )
                              ]),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                PicturesDetail.routeName,
                                arguments: student.id,
                                // arguments: c.id,
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height: 190.0,
                                width: 200.0,
                                image: AssetImage(student.imageGrad),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
