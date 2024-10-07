// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:learn_getx/counter_example/counterController.dart';

// class CounterClass extends StatefulWidget {
//   const CounterClass({super.key});

//   @override
//   State<CounterClass> createState() => _CounterClassState();
// }

// class _CounterClassState extends State<CounterClass> {
//   Countercontroller controller = Get.put(Countercontroller());
//   @override
//   Widget build(BuildContext context) {
//     print('rebuild widget');
//     return Scaffold(
//       body: Center(
//           child: Obx(
//         () => Text(
//           controller.counter.toString(),
//           style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//         ),
//       )),
//       floatingActionButton: Padding(
//         padding: const EdgeInsets.only(bottom: 15),
//         child: FloatingActionButton(
//           backgroundColor: Colors.deepPurple.shade300,
//           shape: const CircleBorder(),
//           onPressed: () {
//             controller.incrementCounter();
//           },
//           child: const Icon(Icons.add),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
// }
