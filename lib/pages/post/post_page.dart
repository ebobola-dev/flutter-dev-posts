//? Post List Screen

import 'package:flutter/material.dart';
import 'package:flutter_dev_posts/assets/themes/paddings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dev_posts/bloc/posts/posts_bloc.dart';
import 'package:flutter_dev_posts/pages/post/widgets/post_text.dart';
import 'package:flutter_dev_posts/widgets/post_image.dart';
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
                      return OrientationBuilder(
                        builder: (context, orientation) {
                          if (orientation == Orientation.portrait) {
                            return SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const SizedBox(height: defaultPadding),
                                  if (post.hasImage) ...[
                                    PostImage(url: post.imageUrl),
                                    const SizedBox(height: defaultPadding),
                                  ],
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          post.title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2,
                                        ),
                                      ),
                                      const SizedBox(width: defaultPadding),
                                      UpsWidget(ups: post.ups),
                                    ],
                                  ),
                                  if (post.hasText) ...[
                                    const SizedBox(height: defaultPadding),
                                    PostText(text: post.text),
                                  ],
                                ],
                              ),
                            );
                          } else {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                if (post.hasImage) ...[
                                  PostImage(url: post.imageUrl),
                                  const SizedBox(width: defaultPadding),
                                ],
                                Flexible(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Flexible(
                                              child: Text(
                                                post.title,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline2,
                                              ),
                                            ),
                                            const SizedBox(
                                                width: defaultPadding),
                                            UpsWidget(ups: post.ups),
                                            if (post.hasImage)
                                              const SizedBox(
                                                  width: defaultPadding / 2),
                                          ],
                                        ),
                                        if (post.hasText) ...[
                                          const SizedBox(
                                              height: defaultPadding),
                                          PostText(text: post.text),
                                        ],
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                        },
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
