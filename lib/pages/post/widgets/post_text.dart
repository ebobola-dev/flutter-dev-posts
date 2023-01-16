import 'package:flutter/material.dart';

class PostText extends StatelessWidget {
  final String text;
  const PostText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      text,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
