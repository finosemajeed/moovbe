import 'package:flutter/material.dart';
import 'package:moovbe/core/utils/color_config.dart';
import 'package:moovbe/core/widgets/custom_button.dart';
import 'package:moovbe/screen/login/presentation/widgets/custom_appbar.dart';
import 'package:moovbe/core/widgets/custom_inputfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(shrinkWrap: true, slivers: [
        const CustomAppBar(),
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          const CustomInputField(
            hintText: 'Enter Username',
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          const CustomInputField(
            hintText: 'Enter Password',
          ),
        ]))
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: CustomButton(
          label: 'Login',
          buttonColor: kRed,
          labelColor: kWhite,
          onPress: () {
            Navigator.of(context).pushNamed('/home_screen');
          },
        ),
      ),
    );
  }
}
