import 'package:flutter/material.dart';

class TopRow extends StatelessWidget {
  const TopRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.menu, color: Colors.black),
        Container(
          margin: const EdgeInsets.only(right: 20.0),
          height: 30.0,
          width: 30.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
