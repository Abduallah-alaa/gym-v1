import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final email = ''.obs;
  final password = ''.obs;
  final authToken = RxString('');

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> _login() async {
    final response = await http.post(
      Uri.parse('Http://gym.fadiramzi..dev/api/mobile/v1/auth/login'),
      body: {
        'email': emailController.text,
        'password': passwordController.text,
      },
    );
    if (response.statusCode == 200) {
      // Login successful
      authToken.value = response.headers['Authorization']!;
      // Navigate to the next page
      Get.offNamed('/home');
    } else {
      // Login failed
      Get.snackbar(
        'Error',
        'Invalid email or password',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
