import 'package:flutter/material.dart';
import 'package:flutter_dev_posts/services/reddit_api.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class MainPageHeader extends StatelessWidget {
  const MainPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text('Flutter Dev Posts'),
      actions: [
        IconButton(
          onPressed: () {
            context.read<RedditApi>().findPosts();
          },
          icon: SvgPicture.asset(
            'assets/icons/refresh.svg',
          ),
        ),
        const SizedBox(width: 12.0),
      ],
    );
  }
}
