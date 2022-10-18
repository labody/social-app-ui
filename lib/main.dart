import 'package:flutter/material.dart';
import 'package:social_app_ui/screens/feed.dart';
import 'package:social_app_ui/screens/notifications.dart';

void main() {
  runApp(const SocialApp());
}

class SocialApp extends StatelessWidget {
  const SocialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: NotificationsScreen(),
      ),
    );
  }
}
