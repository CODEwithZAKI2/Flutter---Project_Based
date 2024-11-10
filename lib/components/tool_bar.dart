// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project_based/styles/app_colors.dart';
import 'package:project_based/styles/app_text.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const Toolbar({Key? key, required this.title, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.bG,
      title: Text(title, style: AppText.header1,),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
