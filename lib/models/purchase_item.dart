// features/purchase/domain/entities/purchase_item.dart

import 'package:json_annotation/json_annotation.dart';
part 'purchase_item.g.dart';
@JsonSerializable()
class PurchaseItem  {
  final int id;
  final String name;
  final int quantity;
  final double price;

  const PurchaseItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.price,
  });
  Map<String, dynamic> toJson() => _$PurchaseItemToJson(this);
  factory PurchaseItem.fromJson(Map<String, dynamic> json) => _$PurchaseItemFromJson(json);

}