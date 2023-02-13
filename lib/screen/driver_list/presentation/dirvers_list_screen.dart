import 'package:flutter/material.dart';
import 'package:moovbe/core/utils/color_config.dart';
import 'package:moovbe/core/widgets/custom_button.dart';
import 'package:moovbe/screen/driver_list/presentation/widgets/custom_driver_tile.dart';

class DriversListScreen extends StatelessWidget {
  const DriversListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Driver List'),
        backgroundColor: kGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            '21 Buses Found',
            style: TextStyle(
              color: kTextColor,
              fontSize: 15,
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return CustomDriverTile(
                  driverName: 'Rohit Sharma',
                  licNumber: 'hdhkfhd',
                  onClick: () {},
                );
              },
            ),
          ),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: CustomButton(
          buttonColor: kRed,
          label: 'Add Driver',
          labelColor: kWhite,
          onPress: () {
            Navigator.of(context).pushNamed('/add_driver_screen');
          },
        ),
      ),
    );
  }
}
