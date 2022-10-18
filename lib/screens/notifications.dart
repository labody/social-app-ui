import 'package:flutter/material.dart';
import 'package:social_app_ui/widgets/notification.dart';
import 'package:social_app_ui/widgets/top_row.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20.0, top: 30.0),
            child: Column(
              children: [
                const TopRow(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Row(
                    children: [
                      const Text(
                        'Notifications',
                        style: TextStyle(
                          color: Color.fromARGB(255, 41, 8, 97),
                          fontSize: 30.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 7.0),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.orange.shade100,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            '12',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10.0),
                    child: Row(
                      children: const [
                        Icon(Icons.search),
                        SizedBox(width: 10.0),
                        Text(
                          'Search for name',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
              ],
            ),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'TODAY',
                  style: TextStyle(
                      color: Color.fromARGB(255, 41, 8, 97),
                      fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                'LAST WEEK',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 40.0, bottom: 30.0),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 4, 33, 56),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  NoticationTile(image: 'leaf.jpeg'),
                  NoticationTile(image: 'canoe.jpeg'),
                  NoticationTile(image: 'beach.jpeg'),
                  NoticationTile(image: 'leaf.jpeg'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
