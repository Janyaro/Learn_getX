// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:learn_getx/FavouriteItemExample/favouriteIconController.dart';

// class Favouriteiconscreen extends StatefulWidget {
//   const Favouriteiconscreen({super.key});

//   @override
//   State<Favouriteiconscreen> createState() => _FavouriteiconscreenState();
// }

// class _FavouriteiconscreenState extends State<Favouriteiconscreen> {
//   // List<String> fruitItem = ['Mangoes', 'Apple', 'Banana', 'Watemelon'];
//   // List<String> FavItem = [];
//   Favouriteiconcontroller controller = Get.put(Favouriteiconcontroller());
//   @override
//   Widget build(BuildContext context) {
//     print('rebuild widget');
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 itemCount: controller.fruitItem.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     elevation: 4,
//                     child: ListTile(
//                       onTap: () {
//                         if (controller.FavItem.contains(
//                             controller.fruitItem[index].toString())) {
//                           controller.removeFromList(
//                               controller.fruitItem[index].toString());
//                         } else {
//                           controller.AddtoFavouriteItem(
//                               controller.fruitItem[index].toString());
//                         }
//                       },
//                       title: Text(controller.fruitItem[index].toString()),
//                       trailing: Obx(
//                         () => controller.FavItem.contains(
//                                 controller.fruitItem[index].toString())
//                             ? const Icon(
//                                 Icons.favorite,
//                                 color: Colors.red,
//                               )
//                             : const Icon(Icons.favorite_outline),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
