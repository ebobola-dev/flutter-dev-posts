//? Post List Screen

import 'package:flutter/material.dart';
import 'package:flutter_dev_posts/pages/main/widgets/header/header.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: MainPageHeader(),
      ),
    );
  }
}
