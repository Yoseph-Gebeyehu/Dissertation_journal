import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/picture_file.dart';

class PicturesDetail extends StatelessWidget {
  // const PicturesDetail({Key? key}) : super(key: key);
  static const routeName = '/pictures-detail';

  const PicturesDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final picId = ModalRoute.of(context)?.settings.arguments as String;
    final picFile = Provider.of<PicturesFile>(context).findBy(picId);

    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text(picFile.name),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          fontFamily: 'QuickSand'
        ),
        centerTitle: true,
        backgroundColor:Theme.of(context).appBarTheme.backgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              child: Image.asset(
                picFile.imageGrad,
                fit: BoxFit.cover,
              ),
            ),
            // const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(top: 15),
              width: MediaQuery.of(context).size.width * 0.9,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                    children: [
                      Text(
                        picFile.name,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'QuickSand',
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      Text(
                        picFile.department,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'QuickSand',
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              // padding: const EdgeInsets.only(bottom: 10, top: 15),
              width: MediaQuery.of(context).size.width * 0.9,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                child: Container(
                  // padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: Text(
                   picFile.lastWord,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'QuickSand',
                          color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Image.asset(
                picFile.image,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
