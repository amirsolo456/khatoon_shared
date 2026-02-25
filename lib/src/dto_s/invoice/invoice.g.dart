// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map json) => Invoice(
  id: (json['id'] as num).toInt(),
  invoiceNo: json['invoiceNo'] as String,
  type: json['type'] as String? ?? 'Sale',
  partyId: (json['partyId'] as num?)?.toInt(),
  sellerEmployeeId: (json['sellerEmployeeId'] as num?)?.toInt(),
  totalAmount: (json['totalAmount'] as num).toDouble(),
  status: json['status'] as String,
  notes: json['notes'] as String?,

  isDeleted: json['isDeleted'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
  'id': instance.id,
  'invoiceNo': instance.invoiceNo,
  'type': instance.type,
  'partyId': instance.partyId,
  'sellerEmployeeId': instance.sellerEmployeeId,
  'totalAmount': instance.totalAmount,
  'status': instance.status,
  'notes': instance.notes,

  'isDeleted': instance.isDeleted,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
