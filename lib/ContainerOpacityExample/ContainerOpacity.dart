// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:learn_getx/ContainerOpacityExample/getx_class.dart';
// class Containeropacity extends StatefulWidget {
//   const Containeropacity({super.key});

//   @override
//   State<Containeropacity> createState() => _ContaineropacityState();
// }

// class _ContaineropacityState extends State<Containeropacity> {
//   ContainerController controller = Get.put(ContainerController());

//   @override
//   Widget build(BuildContext context) {
//     print('rebuild widget');
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Obx(
//               () => Center(
//                 child: Container(
//                   width: 200,
//                   height: 250,
//                   color: Colors.red.withOpacity(controller.opacity.value),
//                 ),
//               ),
//             ),
//             Obx(() => Slider(
//                 value: controller.opacity.value,
//                 onChanged: (value) {
//                   controller.setOpacity(value);
//                 }))
//           ],
//         ),
//       ),
//     );
//   }
// }
