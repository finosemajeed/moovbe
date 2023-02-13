import 'package:flutter/material.dart';
import 'package:moovbe/core/utils/color_config.dart';

class CustomDriverTile extends StatelessWidget {
  const CustomDriverTile({
    super.key,
    required this.driverName,
    required this.licNumber,
    this.onClick,
  });
  final String driverName;
  final String licNumber;
  final Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Card(
          child: ListTile(
            leading: Container(
              height: double.infinity,
              color: kGrey.withOpacity(0.06),
              child: Image.asset('assets/shapes/user.png'),
            ),
            title: Text(driverName),
            subtitle: Text(licNumber),
            trailing: ElevatedButton(
              onPressed: onClick,
              style: ElevatedButton.styleFrom(
                backgroundColor: kRed,
              ),
              child: const Text("Delete"),
            ),
          ),
        ),
      ),
    );
  }
}
