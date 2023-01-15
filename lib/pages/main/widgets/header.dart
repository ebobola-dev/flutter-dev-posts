import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPageHeader extends StatelessWidget {
  const MainPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text('Flutter Dev Posts'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/refresh.svg',
          ),
        ),
        const SizedBox(width: 12.0),
      ],
    );
  }
}
