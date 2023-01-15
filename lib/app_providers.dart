import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dev_posts/bloc/posts/posts_bloc.dart';
import 'package:flutter_dev_posts/repositories/post_repository.dart';
import 'package:flutter_dev_posts/services/reddit_api.dart';
import 'package:provider/provider.dart';

class AppProviders extends StatelessWidget {
  final Widget child;
  const AppProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => Dio(),
        ),
        Provider(
          create: (context) => RedditApi(context.read<Dio>()),
        ),
        Provider(
          create: (context) => PostRepository(context.read<RedditApi>()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PostsBloc(context.read<PostRepository>()),
          ),
        ],
        child: child,
      ),
    );
  }
}
