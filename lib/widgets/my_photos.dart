import 'package:flutter/material.dart';

class MyPhotosColumn extends StatelessWidget {
  const MyPhotosColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My photos',
          style: TextStyle(
            color: Color.fromARGB(255, 41, 8, 97),
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 95.0,
                width: 95.0,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.grey,
                  size: 30.0,
                ),
              ),
              const SizedBox(width: 10.0),
              const MyPhoto(image: 'leaf.jpeg'),
              const SizedBox(width: 10.0),
              const MyPhoto(image: 'canoe.jpeg'),
              const SizedBox(width: 10.0),
              const MyPhoto(image: 'beach.jpeg'),
            ],
          ),
        ),
      ],
    );
  }
}

class MyPhoto extends StatelessWidget {
  const MyPhoto({
    required this.image,
    Key? key,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.0,
      width: 90.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.asset(
          'assets/images/$image',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
