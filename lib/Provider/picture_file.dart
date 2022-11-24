import 'package:flutter/material.dart';
import 'package:gallery/Provider/days_pics.dart';
import 'pictures.dart';

class PicturesFile with ChangeNotifier {
  final List<Picture> _pics = [
    Picture(
      name: 'Eyerusalem Mulugaeta',
      id: 'Jossy1',
      imageGrad: 'Assets/Images/download (1).jpg',
      image: 'Assets/Images/download (1).jpg',
      department: 'Electrical',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Rahel Belayneh',
      id: 'Aman1',
      imageGrad: 'Assets/Images/download (2).jpg',
      image: 'Assets/Images/download (2).jpg',
      department: 'Chemical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Subalew Genetu',
      id: 'Suba1',
      imageGrad: 'Assets/Images/images.jpg',
      image: 'Assets/Images/images.jpg',
      department: 'Software',
      lastWord: 'Java is my life!!',
    ),
    Picture(
      name: 'Kaleb Girma',
      id: 'Jossy2',
      imageGrad: 'Assets/Images/images (1).jpg',
      image: 'Assets/Images/images (1).jpg',
      department: 'Electrical',
      lastWord: 'Java is my life!!',
    ),
    Picture(
      name: 'Naol Taddesse',
      id: 'Aman2',
      imageGrad: 'Assets/Images/images (2).jpg',
      image: 'Assets/Images/images (2).jpg',
      department: 'Chemical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Lily Yheyis',
      id: 'Suba2',
      imageGrad: 'Assets/Images/images (5).jpg',
      image: 'Assets/Images/images (5).jpg',
      department: 'Software',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Subalew Genetu',
      id: 'Jossy3',
      imageGrad: 'Assets/Images/images.jpg',
      image: 'Assets/Images/images.jpg',
      department: 'Electrical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Yoseph Gebeyehu',
      id: 'Aman3',
      imageGrad: 'Assets/Images/images (3).jpg',
      image: 'Assets/Images/images (3).jpg',
      department: 'Chemical',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Amanuel Taddese',
      id: 'Suba3',
      imageGrad: 'Assets/Images/download (1).jpg',
      image: 'Assets/Images/download (1).jpg',
      department: 'Software',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Suzy Genanaw',
      id: 'Jossy4',
      imageGrad: 'Assets/Images/download (2).jpg',
      image: 'Assets/Images/download (2).jpg',
      department: 'Electrical',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Roza Taddesse',
      id: 'Aman4',
      imageGrad: 'Assets/Images/images (1).jpg',
      image: 'Assets/Images/images (1).jpg',
      department: 'Chemical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Siphon Goithom',
      id: 'Suba4',
      imageGrad: 'Assets/Images/download.jpg',
      image: 'Assets/Images/download.jpg',
      department: 'Software',
      lastWord: 'Java is my life!!',
    ),
    Picture(
      name: 'Eyerusalem Mulugaeta',
      id: 'Jossy1',
      imageGrad: 'Assets/Images/images (1).jpg',
      image: 'Assets/Images/images (1).jpg',
      department: 'Electrical',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Rahel Belayneh',
      id: 'Aman1',
      imageGrad: 'Assets/Images/images (2).jpg',
      image: 'Assets/Images/images (2).jpg',
      department: 'Chemical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Natnael Belayneh',
      id: 'Suba1',
      imageGrad: 'Assets/Images/images (3).jpg',
      image: 'Assets/Images/images (3).jpg',
      department: 'Software',
      lastWord: 'Java is my life!!',
    ),
    Picture(
      name: 'Kaleb Girma',
      id: 'Jossy2',
      imageGrad: 'Assets/Images/images (5).jpg',
      image: 'Assets/Images/images (5).jpg',
      department: 'Electrical',
      lastWord: 'Java is my life!!',
    ),
    Picture(
      name: 'Naol Taddesse',
      id: 'Aman2',
      imageGrad: 'Assets/Images/images.jpg',
      image: 'Assets/Images/images.jpg',
      department: 'Chemical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Lily Yheyis',
      id: 'Suba2',
      imageGrad: 'Assets/Images/download (1).jpg',
      image: 'Assets/Images/download (1).jpg',
      department: 'Software',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Subalew Genetu',
      id: 'Jossy3',
      imageGrad: 'Assets/Images/download (2).jpg',
      image: 'Assets/Images/download (2).jpg',
      department: 'Electrical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Yoseph Gebeyehu',
      id: 'Aman3',
      imageGrad: 'Assets/Images/images (3).jpg',
      image: 'Assets/Images/images (3).jpg',
      department: 'Chemical',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Amanuel Taddese',
      id: 'Suba3',
      imageGrad: 'Assets/Images/download.jpg',
      image: 'Assets/Images/download.jpg',
      department: 'Software',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Suzy Genanaw',
      id: 'Jossy4',
      imageGrad: 'Assets/Images/images (1).jpg',
      image: 'Assets/Images/images (1).jpg',
      department: 'Electrical',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Roza Taddesse',
      id: 'Aman4',
      imageGrad: 'Assets/Images/images (2).jpg',
      image: 'Assets/Images/images (2).jpg',
      department: 'Chemical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Siphon Goithom',
      id: 'Suba4',
      imageGrad: 'Assets/Images/images (3).jpg',
      image: 'Assets/Images/images (3).jpg',
      department: 'Software',
      lastWord: 'Java is my life!!',
    ),
    Picture(
      name: 'Eyerusalem Mulugaeta',
      id: 'Jossy1',
      imageGrad: 'Assets/Images/images (5).jpg',
      image: 'Assets/Images/images (5).jpg',
      department: 'Electrical',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Rahel Belayneh',
      id: 'Aman1',
      imageGrad: 'Assets/Images/images.jpg',
      image: 'Assets/Images/images.jpg',
      department: 'Chemical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Natnael Belayneh',
      id: 'Suba1',
      imageGrad: 'Assets/Images/download (1).jpg',
      image: 'Assets/Images/download (1).jpg',
      department: 'Software',
      lastWord: 'Java is my life!!',
    ),
    Picture(
      name: 'Kaleb Girma',
      id: 'Jossy2',
      imageGrad: 'Assets/Images/download.jpg',
      image: 'Assets/Images/download.jpg',
      department: 'Electrical',
      lastWord: 'Java is my life!!',
    ),
    Picture(
      name: 'Naol Taddesse',
      id: 'Aman2',
      imageGrad: 'Assets/Images/download (2).jpg',
      image: 'Assets/Images/download (2).jpg',
      department: 'Chemical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Lily Yheyis',
      id: 'Suba2',
      imageGrad: 'Assets/Images/download.jpg',
      image: 'Assets/Images/download.jpg',
      department: 'Software',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Subalew Genetu',
      id: 'Jossy3',
      imageGrad: 'Assets/Images/images (1).jpg',
      image: 'Assets/Images/images (1).jpg',
      department: 'Electrical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Yoseph Gebeyehu',
      id: 'Aman3',
      imageGrad: 'Assets/Images/images (2).jpg',
      image: 'Assets/Images/images (2).jpg',
      department: 'Chemical',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Amanuel Taddese',
      id: 'Suba3',
      imageGrad: 'Assets/Images/images (3).jpg',
      image: 'Assets/Images/images (3).jpg',
      department: 'Software',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Suzy Genanaw',
      id: 'Jossy4',
      imageGrad: 'Assets/Images/images (5).jpg',
      image: 'Assets/Images/images (5).jpg',
      department: 'Electrical',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Roza Taddesse',
      id: 'Aman4',
      imageGrad: 'Assets/Images/images.jpg',
      image: 'Assets/Images/images.jpg',
      department: 'Chemical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Siphon Goithom',
      id: 'Suba4',
      imageGrad: 'Assets/Images/download (1).jpg',
      image: 'Assets/Images/download (1).jpg',
      department: 'Software',
      lastWord: 'Java is my life!!',
    ),
    Picture(
      name: 'Eyerusalem Mulugaeta',
      id: 'Jossy1',
      imageGrad: 'Assets/Images/download (2).jpg',
      image: 'Assets/Images/download (2).jpg',
      department: 'Electrical',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Rahel Belayneh',
      id: 'Aman1',
      imageGrad: 'Assets/Images/download.jpg',
      image: 'Assets/Images/download.jpg',
      department: 'Chemical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Natnael Belayneh',
      id: 'Suba1',
      imageGrad: 'Assets/Images/images (1).jpg',
      image: 'Assets/Images/images (1).jpg',
      department: 'Software',
      lastWord: 'Java is my life!!',
    ),
    Picture(
      name: 'Kaleb Girma',
      id: 'Jossy2',
      imageGrad: 'Assets/Images/images (2).jpg',
      image: 'Assets/Images/images (2).jpg',
      department: 'Electrical',
      lastWord: 'Java is my life!!',
    ),
    Picture(
      name: 'Naol Taddesse',
      id: 'Aman2',
      imageGrad: 'Assets/Images/images (3).jpg',
      image: 'Assets/Images/images (3).jpg',
      department: 'Chemical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Lily Yheyis',
      id: 'Suba2',
      imageGrad: 'Assets/Images/images (5).jpg',
      image: 'Assets/Images/images (5).jpg',
      department: 'Software',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Subalew Genetu',
      id: 'Jossy3',
      imageGrad: 'Assets/Images/images.jpg',
      image: 'Assets/Images/images.jpg',
      department: 'Electrical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Yoseph Gebeyehu',
      id: 'Aman3',
      imageGrad: 'Assets/Images/download (1).jpg',
      image: 'Assets/Images/download (1).jpg',
      department: 'Chemical',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Amanuel Taddese',
      id: 'Suba3',
      imageGrad: 'Assets/Aman_Norm.jpg',
      image: 'Assets/Aman_Norm.jpg',
      department: 'Software',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Suzy Genanaw',
      id: 'Jossy4',
      imageGrad: 'Assets/Images/download (2).jpg',
      image: 'Assets/Images/download (2).jpg',
      department: 'Electrical',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Roza Taddesse',
      id: 'Aman4',
      imageGrad: 'Assets/Images/download.jpg',
      image: 'Assets/Images/download.jpg',
      department: 'Chemical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Siphon Goithom',
      id: 'Suba4',
      imageGrad: 'Assets/Images/images (1).jpg',
      image: 'Assets/Images/images (1).jpg',
      department: 'Software',
      lastWord: 'Java is my life!!',
    ),
    Picture(
      name: 'Eyerusalem Mulugaeta',
      id: 'Jossy1',
      imageGrad: 'Assets/Images/images (5).jpg',
      image: 'Assets/Images/images (5).jpg',
      department: 'Electrical',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Rahel Belayneh',
      id: 'Aman1',
      imageGrad: 'Assets/Images/images (2).jpg',
      image: 'Assets/Images/images (2).jpg',
      department: 'Chemical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Natnael Belayneh',
      id: 'Suba1',
      imageGrad: 'Assets/Images/images (3).jpg',
      image: 'Assets/Images/images (3).jpg',
      department: 'Software',
      lastWord: 'Java is my life!!',
    ),
    Picture(
      name: 'Kaleb Girma',
      id: 'Jossy2',
      imageGrad: 'Assets/Images/images (5).jpg',
      image: 'Assets/Images/images (5).jpg',
      department: 'Electrical',
      lastWord: 'Java is my life!!',
    ),
    Picture(
      name: 'Naol Taddesse',
      id: 'Aman2',
      imageGrad: 'Assets/Images/images.jpg',
      image: 'Assets/Images/images.jpg',
      department: 'Chemical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Lily Yheyis',
      id: 'Suba2',
      imageGrad: 'Assets/Images/download (1).jpg',
      image: 'Assets/Images/download (1).jpg',
      department: 'Software',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Subalew Genetu',
      id: 'Jossy3',
      imageGrad: 'Assets/Images/download.jpg',
      image: 'Assets/Images/download.jpg',
      department: 'Electrical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Yoseph Gebeyehu',
      id: 'Aman3',
      imageGrad: 'Assets/Images/images (1).jpg',
      image: 'Assets/Images/images (1).jpg',
      department: 'Chemical',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Amanuel Taddese',
      id: 'Suba3',
      imageGrad: 'Assets/Images/images (2).jpg',
      image: 'Assets/Images/images (2).jpg',
      department: 'Software',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Suzy Genanaw',
      id: 'Jossy4',
      imageGrad: 'Assets/Images/images (3).jpg',
      image: 'Assets/Images/images (3).jpg',
      department: 'Electrical',
      lastWord: 'God is Good!!',
    ),
    Picture(
      name: 'Roza Taddesse',
      id: 'Aman4',
      imageGrad: 'Assets/Images/images (5).jpg',
      image: 'Assets/Images/images (5).jpg',
      department: 'Chemical',
      lastWord: 'እኔ ማውቀው ማወቄን ነው!!',
    ),
    Picture(
      name: 'Siphon Goithom',
      id: 'Suba4',
      imageGrad: 'Assets/Images/images.jpg',
      image: 'Assets/Images/images.jpg',
      department: 'Software',
      lastWord: 'Java is my life!!',
    ),
  ];

  final List<DaysItem> _dayPics = [
    DaysItem(
      'Assets/Images/day2.jpg',
      'Councling Dinner Night',
    ),
    DaysItem(
      'Assets/Images/day_1.jpg',
      'Family Tour Time',
    ),
    DaysItem(
      'Assets/Images/Color_day2.jpg',
      'Family Tour Time',
    ),
    DaysItem(
      'Assets/Images/color_day.jpg',
      'Supremacy Of Christ Time',
    ),
    DaysItem(
      'Assets/Images/day_1.jpg',
      'Worship Retreat Tour',
    ),
    DaysItem(
      'Assets/Images/day2.jpg',
      'Worship Retreat Tour ',
    ),
  ];
  List<Picture> get pics {
    return [..._pics];
  }

  List<DaysItem> get dayPics {
    return [..._dayPics];
  }

  List<Picture> get softOnly {
    return _pics
        .where((picItems) => picItems.department == 'Software')
        .toList();
  }

  List<Picture> get chemOnly {
    return _pics
        .where((picItems) => picItems.department == 'Chemical')
        .toList();
  }

  List<Picture> get elecOnly {
    return _pics
        .where((picItems) => picItems.department == 'Electrical')
        .toList();
  }

  Picture findBy(String id) {
    return _pics.firstWhere((pic) => pic.id == id);
  }

  Picture fingByName(String name) {
    return _pics.firstWhere((pic) => pic.name == name);
  }

  List<Picture> findByDep(String department) {
    return _pics.where((dep) => dep.department == department).toList();
  }

  List<Picture> get isFavOnly {
    return _pics.where((picItem) => picItem.isFavorite).toList();
  }

  List<Picture> get isFavOnlyElec {
    return elecOnly.where((picItem) => picItem.isFavorite).toList();
  }

  List<Picture> get isFavOnlyChem {
    return chemOnly.where((picItem) => picItem.isFavorite).toList();
  }

  List<Picture> get isFavOnlySoft {
    return softOnly.where((picItem) => picItem.isFavorite).toList();
  }
}
