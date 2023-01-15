import 'package:flutter/material.dart';
import 'package:flutter_dev_posts/app_providers.dart';
import 'package:flutter_dev_posts/assets/themes/theme_data.dart';
import 'package:flutter_dev_posts/pages/main/main_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const AppProviders(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Dev Posts',
      debugShowCheckedModeBanner: false,
      theme: getThemeData(context),
      home: MainPage(),
    );
  }
}
