import 'package:flutter/material.dart';

class MyVideosColumn extends StatelessWidget {
  const MyVideosColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My videos',
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
            children: const [
              MyVideo(thumbnail: 'sunset.jpeg'),
              SizedBox(width: 10.0),
              MyVideo(thumbnail: 'pirate.jpeg'),
            ],
          ),
        ),
      ],
    );
  }
}

class MyVideo extends StatelessWidget {
  const MyVideo({
    required this.thumbnail,
    Key? key,
  }) : super(key: key);
  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220.0,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset('assets/images/$thumbnail'),
          ),
          Positioned(
            top: 90.0,
            left: 10.0,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.black,
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
