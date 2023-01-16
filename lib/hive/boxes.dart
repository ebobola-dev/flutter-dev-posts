import 'package:flutter_dev_posts/models/post/post.dart';
import 'package:flutter_dev_posts/models/post_order/post_order.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<Post> getPostBox() => Hive.box<Post>(Post.boxName);
  static Box<PostOrder> getPostOrderBox() =>
      Hive.box<PostOrder>(PostOrder.boxName);
}
