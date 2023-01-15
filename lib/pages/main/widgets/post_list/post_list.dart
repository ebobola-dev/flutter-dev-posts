import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dev_posts/bloc/posts/posts_bloc.dart';
import 'package:flutter_dev_posts/pages/main/widgets/post_list/post_card.dart';

class PostList extends StatelessWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context) {
    final postsBloc = context.read<PostsBloc>();
    return BlocBuilder<PostsBloc, PostsState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.postList != current.postList,
      builder: (context, postsState) {
        if (postsState.isInitialization) {
          return Center(
            child: Text(
              "Загрузка сохранённых постов...",
              style: Theme.of(context).textTheme.headline3,
            ),
          );
        }

        //? Чтобы в виджете с текстом "Нет постов" можно было потянуть refresh indicator, этот виджет должен быть скроллируемым
        return LayoutBuilder(
          builder: (context, constraints) => RefreshIndicator(
            notificationPredicate: (_) => !postsState.isLoading,
            onRefresh: () async => postsBloc.add(const PostsEvent.update()),
            child: postsState.postList.isEmpty
                ? SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight,
                        minWidth: constraints.maxWidth,
                      ),
                      child: Center(
                        child: Text(
                          "Нет постов",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: postsState.postList.length,
                    itemBuilder: (context, index) => PostCard(
                      post: postsState.postList[index],
                      onTap: () {},
                    ),
                  ),
          ),
        );
      },
    );
  }
}
