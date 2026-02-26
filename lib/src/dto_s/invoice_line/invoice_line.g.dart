// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceLine _$InvoiceLineFromJson(Map<String, dynamic> json) => InvoiceLine(
  id: (json['id'] as num).toInt(),
  invoiceId: (json['invoice_id'] as num).toInt(),
  productId: (json['product_id'] as num?)?.toInt(),
  description: json['description'] as String?,
  quantity: (json['quantity'] as num).toDouble(),
  unitPrice: (json['unit_price'] as num).toDouble(),
  lineTotal: (json['line_total'] as num).toDouble(),
  partyId: (json['party_id'] as num?)?.toInt(),
  sellerEmployeeId: (json['seller_employee_id'] as num?)?.toInt(),
  isDeleted: json['is_deleted'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$InvoiceLineToJson(InvoiceLine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoice_id': instance.invoiceId,
      'product_id': instance.productId,
      'description': instance.description,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'line_total': instance.lineTotal,
      'party_id': instance.partyId,
      'seller_employee_id': instance.sellerEmployeeId,
      'is_deleted': instance.isDeleted,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
