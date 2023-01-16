import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dev_posts/models/post/post.dart';

class PostImage extends StatelessWidget {
  final Post post;
  final double borderRadius;
  const PostImage({super.key, required this.post, this.borderRadius = 10.0});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: post.imageCached
          ? Image.file(
              File(post.cachedImagePath!),
              fit: BoxFit.cover,
            )
          : CachedNetworkImage(
              imageUrl: post.imageUrl,
              fit: BoxFit.cover,
              placeholder: (context, url) => const SizedBox(
                width: 48,
                height: 48,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                ),
              ),
              errorWidget: (context, url, error) => const Icon(
                Icons.warning_rounded,
                color: Colors.red,
              ),
            ),
    );
  }
}
