// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class secondScreen extends StatefulWidget {
//   var name;
//   secondScreen({super.key, this.name});

//   @override
//   State<secondScreen> createState() => _secondScreenState();
// }

// class _secondScreenState extends State<secondScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple,
//         title: Text(
//           'GetX Navigation ${Get.arguments[0]}',
//           style: const TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Center(
//             child: TextButton(
//                 onPressed: () {
//                   Get.back();
//                 },
//                 child: const Text('Go to back Screen')),
//           )
//         ],
//       ),
//     );
//   }
// }
