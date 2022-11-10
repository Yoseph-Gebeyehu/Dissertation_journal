import 'package:flutter/material.dart';
import 'package:gallery/Provider/picture_file.dart';
import 'package:gallery/Provider/pictures.dart';
import 'package:gallery/Screens/pictues_detail.dart';
import 'package:gallery/Screens/top_row.dart';
import 'package:provider/provider.dart';

class SoftDep extends StatelessWidget {
  const SoftDep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pic = Provider.of<PicturesFile>(context).softOnly;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Software Enginnering',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'QuckSand',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.pushNamed(context, TopRow.routeName,
                      arguments: pic.where((element) {
                        return element.department == 'Chemical';
                      }).toList())
                },
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
                itemCount: pic.length,
                itemBuilder: (context, index) {
                  Picture student = pic[index];
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
                                    icon: const Icon(
                                      Icons.favorite,
                                      color: Colors.deepOrange,
                                    ),
                                    onPressed: () {},
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
