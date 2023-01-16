import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final String url;
  final double borderRadius;
  const PostImage({super.key, required this.url, this.borderRadius = 10.0});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: url,
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
