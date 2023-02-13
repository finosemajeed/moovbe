import 'package:flutter/material.dart';
import 'package:moovbe/core/utils/color_config.dart';

class CustomBusTile extends StatelessWidget {
  const CustomBusTile({
    super.key,
    required this.busName,
    required this.busType,
    this.onClick,
  });
  final String busName;
  final String busType;
  final Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          height: double.infinity,
          color: kGrey.withOpacity(0.06),
          child: Image.asset('assets/shapes/bus2.png'),
        ),
        title: Text(busName),
        subtitle: Text(busType),
        trailing: ElevatedButton(
          onPressed: onClick,
          style: ElevatedButton.styleFrom(
            backgroundColor: kRed,
          ),
          child: const Text("Manage"),
        ),
      ),
    );
  }
}
