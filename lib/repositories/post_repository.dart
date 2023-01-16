import 'package:flutter_dev_posts/models/post/post.dart';
import 'package:flutter_dev_posts/services/reddit_api.dart';

abstract class IPostRepository {
  Future<List<Post>> getPosts();
}

class PostRepository implements IPostRepository {
  final RedditApi _redditApi;
  PostRepository(this._redditApi);

  @override
  Future<List<Post>> getPosts() async {
    final result = await _redditApi.findPosts();
    return result;
  }
}
