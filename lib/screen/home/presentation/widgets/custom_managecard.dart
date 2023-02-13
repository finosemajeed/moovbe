import 'package:flutter/material.dart';
import 'package:moovbe/core/utils/color_config.dart';

class CustomManageCard extends StatelessWidget {
  const CustomManageCard({
    super.key,
    required this.cardName,
    required this.cardType,
    required this.cardImage,
    required this.cardColor,
  });
  final String cardName;
  final String cardType;
  final String cardImage;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.45,
        color: cardColor,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              cardName,
              style: const TextStyle(
                color: kWhite,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              cardType,
              style: TextStyle(
                color: kWhite.withOpacity(0.8),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Expanded(
              child: Image.asset(cardImage),
            ),
          )
        ]),
      ),
    );
  }
}
