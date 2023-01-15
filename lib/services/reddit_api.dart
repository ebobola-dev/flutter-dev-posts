import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dev_posts/models/post.dart';

class RedditApi {
  final Dio _dio;
  const RedditApi(this._dio);

  static const _getPostsUrl = 'https://www.reddit.com/r/flutterdev/new.json';

  Future<List<Post>> findPosts() async {
    try {
      final response = await _dio.get(_getPostsUrl);
      final List postListJson = response.data['data']['children'] as List;
      return postListJson.map((e) => Post.fromJson(e['data'])).toList();
    } catch (e) {
      log(
        'Error on find post: $e',
        name: 'RedditApi[findPosts]',
      );
      throw 'temp';
    }
  }
}
