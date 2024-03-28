import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAppsSection extends StatefulWidget {
  const MyAppsSection({super.key});

  @override
  State<MyAppsSection> createState() => _MyAppsSectionState();
}

class _MyAppsSectionState extends State<MyAppsSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100, top: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Apps',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          const SizedBox(height: 20),
          const Text(
            'Strict Browser',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          const SizedBox(height: 10),
          const Text(
            'A Browser with No Redirects',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 250,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Divider(indent: 20),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Image.asset("assets/strictBrowser/${index + 1}.png");
              },
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Older Apps (Built in Grade 9)',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
          const SizedBox(height: 0),
          const Row(
            children: [
              Text(
                'Sports Dash',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(width: 20),
              Text(
                'Slider Puzzle',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
