import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym/controller/logincontrolar.dart';
import 'package:gym/view/screen/test.dart';
import 'package:gym/view/widgets/background.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final loginController = Get.put(LoginController());

  LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundLogin(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 12.h,
                ),
                const Center(
                  child: Text("data",
                      style: TextStyle(
                          color: Color.fromARGB(255, 213, 212, 209),
                          fontSize: 40)),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Email",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[600]?.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            controller: emailController,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: Colors.white24)),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        const Text(
                          "Password",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[600]?.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            controller: passwordController,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.white24)),
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 64, 85, 146),
                              minimumSize: const Size.fromHeight(50),
                            ),
                            onPressed: () {
                              Get.to(const ss());
                            },
                            child: const Text('Login'),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Center(
                          child: Column(
                            children: [
                              const Text(
                                "Or sign Up using",
                                style: TextStyle(color: Colors.white),
                              ),
                              Image.asset(
                                "img/index2.png",
                                width: 25.w,
                              ),
                              const Text(
                                "Don’t have an account ? sign up here",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
