// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
  id: (json['id'] as num).toInt(),
  date: (json['date'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  totalWeight: (json['total_weight'] as num).toDouble(),
  itemId: (json['item_id'] as num).toInt(),
  userId: (json['user_id'] as num).toInt(),
  userRank: $enumDecode(_$UserRankEnumMap, json['user_rank']),
  price: (json['price'] as num).toDouble(),
);

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
  'id': instance.id,
  'date': instance.date,
  'quantity': instance.quantity,
  'total_weight': instance.totalWeight,
  'item_id': instance.itemId,
  'user_id': instance.userId,
  'user_rank': _$UserRankEnumMap[instance.userRank]!,
  'price': instance.price,
};

const _$UserRankEnumMap = {
  UserRank.accountant: 'accountant',
  UserRank.support: 'support',
  UserRank.analyst: 'analyst',
  UserRank.developer: 'developer',
  UserRank.assistant: 'assistant',
  UserRank.user: 'user',
  UserRank.viewer: 'viewer',
};
