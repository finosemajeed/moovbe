import 'package:flutter/material.dart';
import 'package:moovbe/core/utils/color_config.dart';
import 'package:moovbe/core/widgets/custom_button.dart';
import 'package:moovbe/core/widgets/custom_inputfield.dart';

class AddDriverScreen extends StatelessWidget {
  const AddDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add Driver'),
        backgroundColor: kGrey,
      ),
      body: Column(
        children: const [
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: CustomInputField(hintText: 'Enter Name'),
          ),
          CustomInputField(hintText: 'Enter License Number'),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: CustomButton(
          buttonColor: kRed,
          label: 'Save',
          labelColor: kWhite,
          onPress: () {
            Navigator.of(context).pushNamed('/add_driver_screen');
          },
        ),
      ),
    );
  }
}
