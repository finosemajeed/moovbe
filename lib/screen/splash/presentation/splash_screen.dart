import 'package:flutter/material.dart';
import 'package:moovbe/core/utils/color_config.dart';
import 'package:moovbe/core/widgets/custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRed,
      body: Center(
        child: Image.asset('assets/logo/moovbe_logo.png'),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 20.0),
        child: CustomButton(
          label: 'Get Started',
          labelColor: kRed,
          buttonColor: kWhite,
          onPress: () {
            Navigator.of(context).pushReplacementNamed('/login_screen');
          },
        ),
      ),
    );
  }
}
