import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const Post._();

  factory Post({
    required final String id,
    required final String title,
    @JsonKey(name: 'thumbnail') required final String imageUrl,
    @JsonKey(name: 'ups') required final int likes,
    @JsonKey(name: 'selftext') required final String text,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
