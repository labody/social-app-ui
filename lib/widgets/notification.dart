import 'package:flutter/material.dart';

class NoticationTile extends StatelessWidget {
  const NoticationTile({
    required this.image,
    Key? key,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NotificationImage(image: image),
        const SizedBox(width: 15.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Jenny Smith commented on',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'your post: "Brilliant! :)"',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 5.0),
            Text(
              '2 hours ago',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}

class NotificationImage extends StatelessWidget {
  const NotificationImage({
    required this.image,
    Key? key,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Image.asset(
        'assets/images/$image',
        height: 60.0,
        width: 60.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
