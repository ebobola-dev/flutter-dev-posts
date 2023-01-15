import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final String url;
  const PostImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    );
  }
}
