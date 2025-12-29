// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PurchaseItem _$PurchaseItemFromJson(Map<String, dynamic> json) => PurchaseItem(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  quantity: (json['quantity'] as num).toInt(),
  price: (json['price'] as num).toDouble(),
);

Map<String, dynamic> _$PurchaseItemToJson(PurchaseItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'quantity': instance.quantity,
      'price': instance.price,
    };
