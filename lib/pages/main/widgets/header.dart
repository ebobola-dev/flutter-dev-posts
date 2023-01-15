import 'package:flutter/material.dart';
import 'package:flutter_dev_posts/bloc/posts/posts_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPageHeader extends StatelessWidget {
  const MainPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final PostsBloc postsBloc = context.read<PostsBloc>();
    return AppBar(
      centerTitle: true,
      title: const Text('Flutter Dev Posts'),
      actions: [
        IconButton(
          onPressed: () {
            postsBloc.add(const PostsEvent.update());
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
