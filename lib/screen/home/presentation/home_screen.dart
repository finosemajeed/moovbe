import 'package:flutter/material.dart';
import 'package:moovbe/core/utils/color_config.dart';
import 'package:moovbe/screen/home/presentation/widgets/custom_bus_tile.dart';
import 'package:moovbe/screen/home/presentation/widgets/custom_managecard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGrey,
        centerTitle: true,
        toolbarHeight: 70,
        title: Image.asset(
          'assets/logo/moovbe_logo.png',
          height: 120,
          width: 120,
        ),
      ),
      body: ListView(shrinkWrap: true, children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: const CustomManageCard(
                  cardName: 'Bus',
                  cardType: 'Manage your Bus',
                  cardColor: kRed,
                  cardImage: 'assets/shapes/bus.png',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/drivers_list_screen');
                },
                child: const CustomManageCard(
                  cardName: 'Driver',
                  cardColor: kGrey,
                  cardType: 'Manage your Driver',
                  cardImage: 'assets/shapes/driver.png',
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
          child: Text(
            '21 Buses Found',
            style: TextStyle(
              color: kTextColor,
              fontSize: 15,
            ),
          ),
        ),
        CustomBusTile(
          busName: 'KSRTS',
          busType: 'Swift Scania P-Series',
          onClick: () {},
        )
      ]),
    );
  }
}
