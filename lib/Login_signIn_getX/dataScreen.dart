import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn/Login_signIn_getX/restapiController.dart';

class Datascreen extends StatefulWidget {
  const Datascreen({super.key});

  @override
  State<Datascreen> createState() => _DatascreenState();
}

class _DatascreenState extends State<Datascreen> {
  RestApiController controller = Get.put(RestApiController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: Get.height * 0.1,
          title: const Text(
            'Rest Api Screen',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: FutureBuilder(
          future: controller.getUserData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('No data found.'));
            }

            var userData = snapshot.data;

            return ListView.builder(
              itemCount: userData!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      child: Text(index.toString()),
                    ),
                    title: Text(userData[index]['name']),
                    subtitle: Text(userData[index]['username']),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
