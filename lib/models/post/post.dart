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
    required final int ups,
    @JsonKey(name: 'selftext') required final String text,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  bool get hasImage => imageUrl.isNotEmpty && imageUrl != 'self';
  bool get hasText => text.isNotEmpty;
}
