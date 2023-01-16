import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@HiveType(typeId: 0)
@freezed
class Post with _$Post {
  const Post._();

  factory Post({
    @HiveField(0) required final String id,
    @HiveField(1) required final String title,
    @HiveField(2) @JsonKey(name: 'thumbnail') required final String imageUrl,
    @HiveField(3) required final int ups,
    @HiveField(4) @JsonKey(name: 'selftext') required final String text,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  bool get hasImage =>
      imageUrl.isNotEmpty && !['self', "default"].contains(imageUrl);
  bool get hasText => text.isNotEmpty;

  static String get boxName => "PostBox";
}
