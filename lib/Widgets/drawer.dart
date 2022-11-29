import 'package:flutter/material.dart';
import 'package:gallery/Screens/president_speech.dart';
import 'package:gallery/Screens/top_row.dart';

import '../Screens/color2_day.dart';

class GalleryDrawer extends StatelessWidget {
  // const GalleryDrawer({required Key key}) : super(key: key);
  static const routeName = '/gallery-drawer';

  ListTile listTile(
    BuildContext context,
    IconData icons,
    String text,
    Function()? ontap,
  ) {
    return ListTile(
      leading: Icon(
        icons,
        color: Theme.of(context).iconTheme.color,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontFamily: 'QuickSand',
          fontSize: 18,
          color: Theme.of(context).textTheme.bodyText1?.color!,
        ),
      ),
      onTap: ontap,
      // contentPadding: const EdgeInsets.all(0),
    );
  }

  const GalleryDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.50,
            child: ClipRRect(
              borderRadius:const BorderRadius.only(
                bottomLeft: Radius.circular(22),
                bottomRight: Radius.circular(22),
              ),
              child: Image.asset(
                'Assets/Images/download.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          listTile(
            context,
            Icons.photo_album,
            'All',
            () => Navigator.of(context).pushReplacementNamed(TopRow.routeName),
          ),
          listTile(
            context,
            Icons.color_lens,
            'Color Day',
            () => {
              Navigator.of(context)
                  .pushReplacementNamed(DaysPicturesScreen.routeName)
            },
          ),
          listTile(
            context,
            Icons.person,
            'President Speech',
            () => Navigator.of(context)
                .pushReplacementNamed(PresidentSpeechScreen.routeName),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          listTile(context, Icons.info_outline, 'About', () => null),
          listTile(context, Icons.share, 'Share', () => null),
        ],
      ),
    );
  }
}
