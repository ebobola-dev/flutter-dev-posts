import 'package:flutter/material.dart';
import 'package:flutter_dev_posts/pages/main/widgets/header/update_button.dart';

class MainPageHeader extends StatefulWidget {
  const MainPageHeader({super.key});

  @override
  State<MainPageHeader> createState() => _MainPageHeaderState();
}

class _MainPageHeaderState extends State<MainPageHeader>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text('Flutter Dev Posts'),
      actions: const [
        UpdateButton(),
        SizedBox(width: 12.0),
      ],
    );
  }
}
