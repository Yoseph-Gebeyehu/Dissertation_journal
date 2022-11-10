// import 'package:flutter/material.dart';
// import 'package:gallery/Widgets/chem_only_grid.dart';
// import 'package:gallery/Widgets/elec_only_grid.dart';
// import 'package:gallery/Widgets/top_row.dart';

// import '../Widgets/drawer.dart';

// class ChemScreen extends StatefulWidget {
//   static const routeName = '/Chem-Screen';

//   // const ChemScreen({Key? key}) : super(key: key);

//   @override
//   State<ChemScreen> createState() => _ChemScreenState();
// }

// class _ChemScreenState extends State<ChemScreen> {
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
//           'Chemical ',
//         ),
//       ),
//       body: Column(
//         children: [
//           const TopRow(),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
//               child: ChemGrid(isFav),
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
