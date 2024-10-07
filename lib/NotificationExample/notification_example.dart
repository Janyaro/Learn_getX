// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:learn_getx/NotificationExample/notification_controller.dart';

// class NotificationExampleScreen extends StatefulWidget {
//   const NotificationExampleScreen({super.key});

//   @override
//   State<NotificationExampleScreen> createState() =>
//       _NotificationExampleScreenState();
// }

// class _NotificationExampleScreenState extends State<NotificationExampleScreen> {
//   NotificationController controller = Get.put(NotificationController());
//   @override
//   Widget build(BuildContext context) {
//     print('rebuild widget');
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: Get.height * 0.03,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     'Notification ',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   Obx(() => Switch(
//                       value: controller.notification.value,
//                       onChanged: (value) async {
//                         await controller.setNotification(value);
//                       }))
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
