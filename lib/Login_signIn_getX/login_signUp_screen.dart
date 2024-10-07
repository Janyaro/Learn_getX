import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn/Login_signIn_getX/dataScreen.dart';
import 'package:learn/Login_signIn_getX/login_signIn_controller.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  LoginSigninController controller = Get.put(LoginSigninController());
  @override
  Widget build(BuildContext context) {
    print('rebuild widget');
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: controller.emailController.value,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Email address',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: controller.passController.value,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'password',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 30,
              ),
              Obx(() => InkWell(
                    onTap: () {
                      controller.login().then((value) {
                        Get.to(const Datascreen());
                      });
                    },
                    child: controller.isloading.value
                        ? const CircularProgressIndicator()
                        : Container(
                            height: 45,
                            color: Colors.deepPurple,
                            child: const Center(
                              child: Text(
                                'Login ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
