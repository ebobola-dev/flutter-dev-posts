import 'package:flutter/material.dart';
import 'package:flutter_dev_posts/models/post/post.dart';
import 'package:flutter_dev_posts/pages/post/post_page.dart';
import 'package:flutter_dev_posts/utils/animated_switch_page.dart';

class PostCard extends StatelessWidget {
  final Post post;
  final VoidCallback onTap;
  const PostCard({
    super.key,
    required this.post,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => animatedSwitchPage(
          context,
          PostPage(
            postId: post.id,
          ),
          routeAnimation: RouteAnimation.slideLeft),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).dividerColor,
              width: 2.0,
            ),
          ),
        ),
        child: Row(
          children: [
            if (post.hasImage) ...[
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  post.imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 8.0),
            ],
            Flexible(
              child: Text(
                post.title,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
