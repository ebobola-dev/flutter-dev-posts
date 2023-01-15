//? Post List Screen

import 'package:flutter/material.dart';
import 'package:flutter_dev_posts/assets/themes/paddings.dart';
import 'package:flutter_dev_posts/bloc/posts/posts_bloc.dart';
import 'package:flutter_dev_posts/pages/main/widgets/header/header.dart';
import 'package:flutter_dev_posts/pages/main/widgets/post_list/post_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dev_posts/utils/snack_bar.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final BlocListener<PostsBloc, PostsState> _getPostsError =
      BlocListener<PostsBloc, PostsState>(
    listenWhen: (previous, current) =>
        previous.error == null && current.error != null,
    listener: (context, postsState) {
      showGetSnackBar(
        context,
        postsState.error!,
        textColor: Colors.red,
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        _getPostsError,
      ],
      child: const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: MainPageHeader(),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenPadding),
            child: PostList(),
          ),
        ),
      ),
    );
  }
}
