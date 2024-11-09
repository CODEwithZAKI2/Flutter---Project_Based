// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_based/styles/app_text.dart';

class PostItems extends StatelessWidget {
  const PostItems({Key? key, required this.user}) : super(key: key);
  final String user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/user1.png',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset('assets/temp/post1.jpg'),
          SizedBox(
            height: 12,
          ),
          Text(
            "The sun is a daily reminder that we too can rise from the darkness, that we too can shine our own light 🌞💖",
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}
