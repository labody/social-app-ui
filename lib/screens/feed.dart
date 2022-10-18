import 'package:flutter/material.dart';
import 'package:social_app_ui/widgets/top_row.dart';
import 'package:social_app_ui/widgets/my_photos.dart';
import 'package:social_app_ui/widgets/my_videos.dart';
import 'package:social_app_ui/widgets/profileinocard.dart';
import 'package:social_app_ui/widgets/tag.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 30.0),
          child: Column(
            children: [
              const TopRow(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Feed',
                        style: TextStyle(
                          color: Color.fromARGB(255, 41, 8, 97),
                          fontSize: 30.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Sed ut amnet dolor',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  const ProfileInfoCard(
                    count: '24',
                    title: 'photos',
                    cardColor: Colors.orange,
                    countColor: Colors.white,
                    titleColor: Colors.white,
                  ),
                  const SizedBox(width: 7.0),
                  ProfileInfoCard(
                    count: '48',
                    title: 'articles',
                    cardColor: Colors.grey.shade200,
                    countColor: Colors.red,
                    titleColor: Colors.black,
                  ),
                  const SizedBox(width: 7.0),
                  ProfileInfoCard(
                    count: '22k',
                    title: 'followers',
                    cardColor: Colors.grey.shade200,
                    countColor: Colors.deepPurple,
                    titleColor: Colors.black,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      SelectedTag(name: 'CHAT'),
                      SizedBox(width: 33.0),
                      Tag(name: 'FEATURED'),
                      SizedBox(width: 33.0),
                      Tag(name: 'POPULAR'),
                      SizedBox(width: 33.0),
                      Tag(name: 'FOLLOWING'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: MyPhotosColumn(),
              ),
              const SizedBox(height: 30.0),
              const SizedBox(
                width: double.infinity,
                child: MyVideosColumn(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
