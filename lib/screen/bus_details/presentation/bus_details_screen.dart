import 'package:flutter/material.dart';
import 'package:moovbe/core/utils/color_config.dart';

class BusDetailsScreen extends StatelessWidget {
  const BusDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('KSRTC Swift Scani P-Series'),
        backgroundColor: kGrey,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.2,
                  color: kGrey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          children: [
                            const Text(
                              'Rohith Sharma',
                              style: TextStyle(
                                color: kWhite,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'License no: 90990908098',
                              style: TextStyle(
                                color: kWhite.withOpacity(0.8),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset('assets/shapes/driver.png'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: kGrey.withOpacity(0.8),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('assets/shapes/seats_1x3.png'),
            ),
          ),
        ),
      ]),
    );
  }
}
