import 'package:flutter/material.dart';
import 'package:gallery/Widgets/d1_chem_only_grid.dart';
import 'package:gallery/Widgets/d2_elec_only_grid.dart';
import 'package:gallery/Widgets/d3_soft_only_grid.dart';
import 'package:provider/provider.dart';

import 'package:gallery/Provider/favorite_data.dart';
import 'package:gallery/Provider/pictures.dart';
import 'package:gallery/Provider/theme_data.dart';
import 'package:gallery/Screens/color2_day.dart';
import 'package:gallery/Screens/favorite_screen.dart';
import 'package:gallery/Screens/pictues_detail.dart';
import 'package:gallery/Screens/president_speech.dart';
import 'package:gallery/Widgets/drawer.dart';
import 'package:gallery/Screens/top_row.dart';
import 'Provider/picture_file.dart';
import 'Widgets/student_pic_grid.dart';

void main() => runApp(MyGallery());

class MyGallery extends StatelessWidget {
  var isFav;

  // const MyGallery({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PicturesFile(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeSetting(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavoriteData(),
        ),
        ChangeNotifierProvider(
          create: (context) => Picture(
            department: '',
            id: '',
            image: '',
            imageGrad: '',
            lastWord: '',
            name: '',
          ),
        ),
      ],
      child: Consumer<ThemeSetting>(
        builder: (context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: value.darkTheme ? darkTheme : lightTheme,
            home: const TopRow(),
            routes: {
              PicturesDetail.routeName: (context) => PicturesDetail(),
              TopRow.routeName: (context) => const TopRow(),
              FavoriteScreen.routeName: (context) => FavoriteScreen(),
              StudentPicsGrid.routeName: (context) => StudentPicsGrid(isFav),
              ElecGrid.routeName: (context) => ElecGrid(isFav),
              SoftGrid.routeName: (context) => SoftGrid(isFav),
              ChemGrid.routeName: (context) => ChemGrid(isFav),
              PresidentSpeechScreen.routeName: (context) =>
                  const PresidentSpeechScreen(),
              GalleryDrawer.routeName: (context) => const GalleryDrawer(),
              DaysPicturesScreen.routeName: (context) =>
                  const DaysPicturesScreen(),
            },
          );
        },
      ),
    );
  }
}
