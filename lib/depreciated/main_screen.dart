// import 'package:flutter/material.dart';
// import 'package:gallery/Widgets/top_row.dart';
// import 'package:provider/provider.dart';

// import '/Widgets/student_pic_grid.dart';
// import '../Widgets/drawer.dart';

// class MainScreen extends StatefulWidget {
//   // const MainScreen({Key key}) : super(key: key);
//   static const routeName = '/Main-screen';

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _currentIndex = 0;
//   var isFav = false;
//   Color colorS = Colors.grey;
//   Color colorF = Colors.grey;
//   Color color3 = Colors.grey;
//   Color colorI = Colors.grey;
//   @override
//   Widget build(BuildContext context) {
//     // final picItem = Provider.of<PicturesFile>(context);
//     return Scaffold(
//       // drawer: Drawer(
//       //   width: 250,
//       //   elevation: 100,
//       //   child: GalleryDrawer(),
//       // ),
//       // appBar: AppBar(
//       //   backgroundColor: Colors.purple,
//       //   elevation: 1,
//       //   title: const Text(
//       //     'All Pictures',
//       //   ),
//       // ),
//       body: Column(
//         children: [
//           const TopRow(),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: StudentPicsGrid(isFav),
//             ),
//           ),
//         ],
//       ),
//       // bottomNavigationBar: BottomNavigationBar(
//       //   type: BottomNavigationBarType.fixed,
//       //   items: [
//       //     BottomNavigationBarItem(
//       //       label: 'favorite',
//       //       icon: IconButton(
//       //         icon: Icon(Icons.favorite),
//       //         onPressed: () {
//       //           setState(() {
//       //             isFav = true;
//       //           });
//       //         },
//       //       ),
//       //     ),
//       //     BottomNavigationBarItem(
//       //       label: 'search',
//       //       icon: IconButton(
//       //         icon: Icon(Icons.search),
//       //         onPressed: () {
//       //           setState(() {
//       //             isFav = true;
//       //           });
//       //         },
//       //       ),
//       //     ),
//       //     BottomNavigationBarItem(
//       //       label: 'search',
//       //       icon: IconButton(
//       //         icon: Icon(Icons.search),
//       //         onPressed: () {
//       //           setState(() {
//       //             isFav = true;
//       //           });
//       //         },
//       //       ),
//       //     ),
//       //     BottomNavigationBarItem(
//       //       label: 'Me',
//       //       icon: IconButton(
//       //         icon: Icon(Icons.person_outline_sharp),
//       //         onPressed: () {
//       //           setState(() {
//       //             isFav = true;
//       //           });
//       //         },
//       //       ),
//       //     ),
//       //   ],
//       //   unselectedItemColor: Colors.grey,
//       //   selectedItemColor: Colors.purple,
//       //   onTap: (index) {
//       //     _currentIndex = index;
//       //   },
//       //   currentIndex: _currentIndex,
//       // ),
//       // bottomNavigationBar: Container(
//       //   height: MediaQuery.of(context).size.height * 0.08,
//       //   color: Colors.transparent,
//       //   child: Row(
//       //     mainAxisAlignment: MainAxisAlignment.spaceAround,
//       //     children: [
//       //       IconButton(
//       //         onPressed: () {
//       //           setState(() {
//       //             isFav = true;
//       //             colorS = Colors.purple;
//       //           });
//       //         },
//       //         icon: Icon(
//       //           Icons.search,
//       //           color: colorS,
//       //         ),
//       //       ),
//       //       IconButton(
//       //         onPressed: () {
//       //           setState(() {
//       //             isFav = true;
//       //             colorF = Colors.purple;
//       //           });
//       //         },
//       //         icon: Icon(
//       //           Icons.favorite,
//       //           color: colorF,
//       //         ),
//       //       ),
//       //       IconButton(
//       //         onPressed: () {
//       //           // setState(
//       //           //   () {
//       //           //     isFav = true;
//       //           //     color3 = Colors.purple;
//       //           //   },
//       //           // );
//       //         },
//       //         icon: Icon(
//       //           Icons.card_travel,
//       //           color: color3,
//       //         ),
//       //       ),
//       //       IconButton(
//       //         onPressed: () {
//       //           setState(() {
//       //             isFav = true;
//       //             colorI = Colors.purple;
//       //           });
//       //         },
//       //         icon: Icon(
//       //           Icons.image,
//       //           color: colorI,
//       //         ),
//       //       ),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }
