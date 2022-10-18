import 'package:flutter/material.dart';

class ProfileInfoCard extends StatelessWidget {
  const ProfileInfoCard({
    required this.count,
    required this.title,
    required this.cardColor,
    required this.countColor,
    required this.titleColor,
    Key? key,
  }) : super(key: key);

  final String? count;
  final String? title;
  final Color? cardColor;
  final Color? titleColor;
  final Color? countColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 100.0,
      padding: const EdgeInsets.only(
        top: 5.0,
        bottom: 7.0,
        left: 20.0,
      ),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$count',
            style: TextStyle(
              color: countColor,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          Text(
            '$title',
            style: TextStyle(
              color: titleColor,
            ),
          ),
        ],
      ),
    );
  }
}
