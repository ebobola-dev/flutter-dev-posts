//? В хранилище Hive объекты автоматически сортируюся по ключам,
//? Их нельзя менять местами или класть новые объекты на какое-то нн-ое место
//? Я не могу положить новые посты в начало хранилища
//? Поэтому я сохраняю порядок постов, этот класс был создан только для того,
//? чтобы знать, в каком порядке читать список постов из локального хранилища, при запуске приложения

import 'package:hive/hive.dart';

part 'post_order.g.dart';

@HiveType(typeId: 1)
class PostOrder {
  @HiveField(0)
  List<String> orderIdList;
  PostOrder({
    this.orderIdList = const [],
  });

  static String get boxName => "PostOrderBox";
}
