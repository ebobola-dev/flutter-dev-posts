import 'package:flutter_dev_posts/models/post/post.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<Post> getPostBox() => Hive.box<Post>(Post.boxName);
}
