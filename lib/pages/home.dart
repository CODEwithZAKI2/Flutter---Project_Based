// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_based/components/post_items.dart';
import 'package:project_based/components/tool_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<String> users = [];
  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
        appBar: Toolbar(
          title: '10hr Flutter',
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svg/ic_location.svg'),
            ),
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
