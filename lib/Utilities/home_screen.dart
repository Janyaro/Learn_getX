// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Get X'),
//         centerTitle: true,
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Column(
//         children: [
//           Card(
//             child: ListTile(
//               onTap: () {
//                 Get.defaultDialog(
//                     title: 'DialoagBox',
//                     middleText:
//                         'is main jo likhna hai likho lakin 3 se ziyade kuch na ho ',
//                     onConfirm: () {
//                       Get.back();
//                     },
//                     onCancel: () {
//                       if (kDebugMode) {
//                         print('mera kya karo ge');
//                       }
//                     });
//               },
//               title: const Text('get x tutorail'),
//               subtitle: const Text('mujh pa click karne se dialog ahe ga'),
//             ),
//           ),
//           Card(
//             child: ListTile(
//               onTap: () {
//                 Get.bottomSheet(
//                     backgroundColor: Colors.blue,
//                     ListView(
//                       shrinkWrap: true,
//                       children: [
//                         Container(
//                           child: Column(
//                             children: [
//                               ListTile(
//                                 onTap: () {
//                                   Get.changeTheme(ThemeData.light());
//                                   Get.back();
//                                 },
//                                 leading: const Icon(Icons.lightbulb_rounded),
//                                 title: const Text('light Theme'),
//                               ),
//                               ListTile(
//                                 onTap: () {
//                                   Get.changeTheme(ThemeData.dark());
//                                   Get.back();
//                                 },
//                                 leading: const Icon(Icons.lightbulb_rounded),
//                                 title: const Text('dark Theme'),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ));
//               },
//               title: const Text('get x tutorail'),
//               subtitle: const Text('mujh pa click karne se bottomsheet ahe ga'),
//             ),
//           ),
//           TextButton(
//               onPressed: () {
//                 // Get.to(const secondScreen(
//                 //   name: 'Waseem',
//                 // ));
//                 Get.toNamed('/second', arguments: ['waseem', 'rizwan']);
//               },
//               child: const Text('Go to Navigation Screen'))
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         shape: const CircleBorder(),
//         child: const Icon(Icons.add),
//         onPressed: () {
//           Get.snackbar(
//             'getx',
//             'main toh ek sms se ho jaho ga',
//           );
//         },
//       ),
//     );
//   }
// }
