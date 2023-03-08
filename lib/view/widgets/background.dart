import 'package:flutter/material.dart';

class BackgroundLogin extends StatelessWidget {
  const BackgroundLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('img/loginpage1.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)),
      ),
    );
  }
}
