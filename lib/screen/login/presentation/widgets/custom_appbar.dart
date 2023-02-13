
import 'package:flutter/material.dart';
import 'package:moovbe/core/utils/color_config.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: kGrey,
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Wrap(
            children: [
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
              Text(
                'Manage your Bus and Driver',
                style: TextStyle(
                  fontSize: 12,
                  color: kWhite.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
        background: Align(
          alignment: Alignment.centerRight,
          child: Image.asset(
            'assets/shapes/polygon.png',
          ),
        ),
      ),
    );
  }
}
