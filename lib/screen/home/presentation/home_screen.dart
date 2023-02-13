import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        title: Image.asset(
          'assets/logo/moovbe_logo.png',
          height: 120,
          width: 120,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          

      ]),
    );
  }
}
