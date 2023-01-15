//? Post List Screen

import 'package:flutter/material.dart';
import 'package:flutter_dev_posts/assets/themes/paddings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dev_posts/bloc/posts/posts_bloc.dart';
import 'package:flutter_dev_posts/pages/post/widgets/ups.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostPage extends StatelessWidget {
  final String postId;
  const PostPage({super.key, required this.postId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: SvgPicture.asset(
                      'assets/icons/arrow-left.svg',
                    ),
                  ),
                ],
              ),
              Expanded(
                child: BlocBuilder<PostsBloc, PostsState>(
                  buildWhen: (previous, current) =>
                      previous.getPostWithId(postId) !=
                      current.getPostWithId(postId),
                  builder: (context, postsState) {
                    final post = postsState.getPostWithId(postId);
                    if (post != null) {
                      return SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const SizedBox(height: defaultPadding),
                            if (post.hasImage) ...[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.network(
                                  post.imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: defaultPadding),
                            ],
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    post.title,
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                ),
                                const SizedBox(width: defaultPadding),
                                UpsWidget(ups: post.ups),
                                if (post.hasImage)
                                  const SizedBox(width: defaultPadding / 2),
                              ],
                            ),
                            const SizedBox(height: defaultPadding),
                            Text(
                              post.text,
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                      );
                    }
                    return Center(
                      child: Text(
                        "Ошибка при открытии поста",
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: Colors.red),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
