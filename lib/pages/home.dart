// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:project_based/components/post_items.dart';
import 'package:project_based/styles/app_colors.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<String> users = [];
  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.bG,
          title: Text("10hr Flutter"),
          actions: [
            Icon(Icons.location_on_outlined),
          ],
        ),
        body: ListView.separated(
          itemCount: users.length,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20,
            );
          },
          itemBuilder: (context, index) {
          return PostItems(user: users[index]);
        }));
  }

  mockUsersFromServer() {
    for (var i = 0; i < 100; i++) {
      users.add('User name $i');
    }
    return users;
  }
}
