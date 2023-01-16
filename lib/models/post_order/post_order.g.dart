// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_order.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PostOrderAdapter extends TypeAdapter<PostOrder> {
  @override
  final int typeId = 1;

  @override
  PostOrder read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PostOrder(
      orderIdList: (fields[0] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, PostOrder obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.orderIdList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostOrderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
