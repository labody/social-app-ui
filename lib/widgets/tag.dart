import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag({
    required this.name,
    Key? key,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.bold,
        // fontSize: 20.0,
      ),
    );
  }
}

class SelectedTag extends StatelessWidget {
  const SelectedTag({
    required this.name,
    Key? key,
  }) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange.shade100,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        name,
        style: const TextStyle(
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
