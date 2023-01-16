import 'dart:developer';
import 'dart:io';
import 'package:flutter_dev_posts/services/reddit_api.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

abstract class ICacheImages {
  Future<bool> hasCachedImage(String postId);
  Future<String?> cacheImage(String postId, String imageUrl);
  Future<void> deleteImageFromCache(String postId);
}

class CacheImages implements ICacheImages {
  final RedditApi _redditApi;
  CacheImages(this._redditApi);

  @override
  Future<String?> cacheImage(String postId, String imageUrl) async {
    try {
      final byteImage = await _redditApi.getImage(imageUrl);
      final Directory documentsDirectory =
          await getApplicationDocumentsDirectory();
      final imageFilePath = path.join(
        documentsDirectory.path,
        path.basename(postId),
      );
      final imageFile = File(imageFilePath);
      await imageFile.writeAsBytes(byteImage);
      return imageFilePath;
    } catch (e) {
      log(
        'Error on save image: $e',
        name: 'CacheImages[saveImage]',
      );
    }
    return null;
  }

  @override
  Future<bool> hasCachedImage(String postId) async {
    final Directory documentsDirectory =
        await getApplicationDocumentsDirectory();
    return await File(path.join(
      documentsDirectory.path,
      path.basename(postId),
    )).exists();
  }

  @override
  Future<void> deleteImageFromCache(String postId) async {
    final Directory documentsDirectory =
        await getApplicationDocumentsDirectory();
    final file = File(path.join(
      documentsDirectory.path,
      path.basename(postId),
    ));
    if (await file.exists()) {
      await file.delete();
    }
  }
}
