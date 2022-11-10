import 'package:flutter/material.dart';
import 'package:gallery/Screens/president_speech.dart';
import 'package:gallery/Screens/top_row.dart';

import '../Screens/color2_day.dart';

class GalleryDrawer extends StatelessWidget {
  // const GalleryDrawer({required Key key}) : super(key: key);
  static const routeName = '/gallery-drawer';

  const GalleryDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'Assets/Images/download.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              'All',
              style: TextStyle(
                fontFamily: 'QuickSand',
                fontSize: 18,
                color: Theme.of(context).primaryColor,
              ),
            ),
            onTap: () =>
                {Navigator.of(context).pushReplacementNamed(TopRow.routeName)},
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              'President Speech',
              style: TextStyle(
                fontFamily: 'QuickSand',
                fontSize: 18,
                color: Theme.of(context).primaryColor,
              ),
            ),
            onTap: () => {
              Navigator.of(context)
                  .pushReplacementNamed(PresidentSpeechScreen.routeName)
            },
          ),
          ListTile(
            leading: Icon(
              Icons.color_lens,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              'Color Day',
              style: TextStyle(
                fontFamily: 'QuickSand',
                fontSize: 18,
                color: Theme.of(context).primaryColor,
              ),
            ),
            onTap: () => {
              Navigator.of(context)
                  .pushReplacementNamed(DaysPicturesScreen.routeName)
            },
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.info_outline,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              'About ',
              style: TextStyle(
                fontFamily: 'QuickSand',
                fontSize: 18,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
           ListTile(
            leading: Icon(
              Icons.share,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              'Share',
              style: TextStyle(
                fontFamily: 'QuickSand',
                fontSize: 18,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
