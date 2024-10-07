// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class LocalizationPractice extends StatefulWidget {
//   const LocalizationPractice({super.key});

//   @override
//   State<LocalizationPractice> createState() => _LocalizationPracticeState();
// }

// class _LocalizationPracticeState extends State<LocalizationPractice> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Card(
//               child: ListTile(
//                 title: Text('message'.tr),
//                 subtitle: Text('Name'.tr),
//                 trailing: SizedBox(
//                   width: 140,
//                   child: Row(
//                     children: [
//                       TextButton(
//                           onPressed: () {
//                             Get.updateLocale(Locale('en', 'US'));
//                           },
//                           child: Text('English')),
//                       TextButton(
//                           onPressed: () {
//                             Get.updateLocale(Locale('ur', 'PK'));
//                           },
//                           child: Text('urdu')),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
