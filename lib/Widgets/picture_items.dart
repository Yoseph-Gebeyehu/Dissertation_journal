import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gallery/Widgets/elec_only_grid.dart';
import 'package:provider/provider.dart';

import 'package:gallery/Provider/pictures.dart';
import 'package:gallery/Screens/pictues_detail.dart';

class PicturesItem extends StatelessWidget {
  const PicturesItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pic = Provider.of<Picture>(context, listen: false);
    return Column(
      children: <Widget>[
        Container(
          height: 350,
          // color: Colors.amber,
          width: MediaQuery.of(context).size.width * 0.90,
          child: Container(
            margin: const EdgeInsets.all(0),
          width: MediaQuery.of(context).size.width * 0.90,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  bottom: 22,
                  child: Container(
                    height: 120.0,
                    width: MediaQuery.of(context).size.width * 0.90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          pic.name,
                          style: TextStyle(
                            fontSize: 20.0,
                            color:
                                Theme.of(context).appBarTheme.backgroundColor,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          pic.department,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 20
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(PicturesDetail.routeName,arguments: pic.id);
                      },
                      child: Image(
                        height: 250.0,
                        width: MediaQuery.of(context).size.width * 0.90,
                        image: AssetImage(pic.imageGrad),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
    // return ClipRRect(
    //   borderRadius: BorderRadius.circular(15),
    //   child: Column(
    //     children: [
    // GridTile(
    // footer: GridTileBar(
    //   backgroundColor: Colors.black38,
    //   title: Text(
    //     pic.name,
    //     textAlign: TextAlign.center,
    //     style: const TextStyle(
    //       fontFamily: 'QuickSand',
    //       fontSize: 17,
    // fontWeight: FontWeight.w100,
    //     ),
    //   ),
    //   trailing: Consumer<Picture>(
    //     builder: (ctx, pic, _) => IconButton(
    //       icon: Icon(
    //         pic.isFavorite ? Icons.favorite : Icons.favorite_border,
    //         color: Colors.deepOrange,
    //       ),
    //       onPressed: () {
    //         pic.toggleFavorite();
    //       },
    //       color: Colors.amber,
    //     ),
    //   ),
    // ),
    //   child: GestureDetector(
    //     onTap: () {
    //       Navigator.of(context)
    //           .pushNamed(PicturesDetail.routeName, arguments: pic.id);
    //     },
    //     child: Image.asset(
    //       pic.imageGrad,
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    // ),
    // ClipRRect(
    //   child: Column(
    //     children: [
    //       Image.asset(
    //         pic.imageGrad,
    //         fit: BoxFit.cover,
    //       ),
    //       Padding(
    //           padding: const EdgeInsets.only(
    //             top: 5,
    //             bottom: 5,
    //           ),
    //           child: Text(
    //             pic.name,
    //             textAlign: TextAlign.center,
    //           )),
    //       Text(pic.department),
    //     ],
    //   ),
    // )
    //     ],
    //   ),
    // );
  }
}
