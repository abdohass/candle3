// import 'package:flutter/material.dart';
// import 'package:untitled/sreens/links.dart';
// import '../sreens/firstscreen.dart';
//
//
// class AppDrawer extends StatefulWidget {
//   const AppDrawer({super.key});
//
//   @override
//   State<AppDrawer> createState() => _AppDrawerState();
// }
//
// class _AppDrawerState extends State<AppDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         children: <Widget>[
//           AppBar(
//             title: Text("choose ur direction"),
//             backgroundColor: Color(0xff0E59C4),
//             automaticallyImplyLeading: false,
//           ),
//           Divider(),
//           ListTile(
//             leading: Icon(Icons.account_balance_outlined),
//             title: const Text('links candle academy'),
//             onTap: () {
//               Navigator.push(context, MaterialPageRoute(
//                   builder: (context){
//                     return Links();
//                   }
//               ));
//
//
//             },
//           ),
//
//         ],
//       ),
//     );
//   }
// }
