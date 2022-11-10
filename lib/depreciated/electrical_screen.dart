// import 'package:flutter/material.dart';
// import 'package:gallery/Widgets/elec_only_grid.dart';
// import 'package:gallery/Widgets/top_row.dart';
// import 'package:provider/provider.dart';

// import '../Widgets/drawer.dart';

// class ElectScreen extends StatefulWidget {
//   static const routeName = '/Elec-Screen';

//   //  ElectScreen({Key? key}) : super(key: key);

//   @override
//   State<ElectScreen> createState() => _ElectScreenState();
// }

// class _ElectScreenState extends State<ElectScreen> {
//   var isFav = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
//         width: 250,
//         elevation: 100,
//         child: GalleryDrawer(),
//       ),
//       appBar: AppBar(
//         backgroundColor: Colors.purple,
//         elevation: 1,
//         title: const Text(
//           'Electrical ',
//         ),
//       ),
//       body: Column(
//         children: [
//           const TopRow(),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
//               child: ElecGrid(isFav),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: Container(
//         height: MediaQuery.of(context).size.height * 0.08,
//         color: Colors.purple,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.search,
//                 color: Colors.white,
//               ),
//             ),
//             IconButton(
//               onPressed: () {
//                 setState(() {
//                   isFav = true;
//                 });
//               },
//               icon: const Icon(
//                 Icons.favorite,
//                 color: Colors.white,
//               ),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.card_travel,
//                 color: Colors.white,
//               ),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.image,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
