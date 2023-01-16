import 'dart:developer';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_dev_posts/models/errors/api_error.dart';
import 'package:flutter_dev_posts/models/post/post.dart';

class RedditApi {
  final Dio _dio;
  const RedditApi(this._dio);

  static const _getPostsUrl = 'https://www.reddit.com/r/flutterdev/new.json';

  Future<List<Post>> findPosts() async {
    try {
      final response = await _dio.get(_getPostsUrl);
      if (response.statusCode != 200) {
        log(
          'Request error on find post: ${response.statusCode}',
          name: 'RedditApi[findPosts]',
        );
        throw ApiError.requestError(response.statusCode);
      }
      final List postListJson = response.data['data']['children'] as List;
      return postListJson.map((e) => Post.fromJson(e['data'])).toList();
    } catch (e) {
      log(
        'Error on get posts from json: $e',
        name: 'RedditApi[findPosts]',
      );
      throw e is RequestError ? throw e : ApiError.unhandledError(e.toString());
    }
  }

  Future<Uint8List> getImage(String imageUrl) async {
    try {
      final response = await _dio.get(
        imageUrl,
        options: Options(responseType: ResponseType.bytes),
      );
      if (response.statusCode != 200) {
        log(
          'Request error on get image: ${response.statusCode}',
          name: 'RedditApi[findPosts]',
        );
        throw ApiError.requestError(response.statusCode);
      }
      return response.data;
    } catch (e) {
      log(
        'Error on get image from url: $e',
        name: 'RedditApi[getImage]',
      );
      throw e is RequestError ? throw e : ApiError.unhandledError(e.toString());
    }
  }
}
