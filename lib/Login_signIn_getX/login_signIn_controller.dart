import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginSigninController extends GetxController {
  final emailController = TextEditingController().obs;
  final passController = TextEditingController().obs;

  RxBool isloading = false.obs;
  Future<void> login() async {
    isloading.value = true;
    try {
      print('Attempting to login...'); // Debug print
      final response = await post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          "email": emailController.value.text,
          "password": passController.value.text
        },
      );

      print('Response status: ${response.statusCode}'); // Debug print
      var data = jsonDecode(response.body);
      print('Response body: $data'); // Debug print

      if (response.statusCode == 200) {
        isloading.value = false;
        Get.snackbar('Login', 'Login Successfully');
      } else {
        isloading.value = false;
        Get.snackbar('Login Failed', 'Login failed');
      }
    } catch (e) {
      isloading.value = false;
      print('Caught an error: $e'); // Debug print
      Get.snackbar('Error', e.toString());
    }
  }
}
