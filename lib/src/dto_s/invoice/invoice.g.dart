// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
  id: (json['id'] as num).toInt(),
  invoiceNo: json['invoice_no'] as String,
  type: json['type'] as String? ?? 'Sale',
  partyId: (json['party_id'] as num?)?.toInt(),
  sellerEmployeeId: (json['seller_employee_id'] as num?)?.toInt(),
  totalAmount: (json['total_amount'] as num).toDouble(),
  status: json['status'] as String,
  notes: json['notes'] as String?,
  version: (json['version'] as num).toDouble(),
  isDeleted: json['is_deleted'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
  'id': instance.id,
  'invoice_no': instance.invoiceNo,
  'type': instance.type,
  'party_id': instance.partyId,
  'seller_employee_id': instance.sellerEmployeeId,
  'total_amount': instance.totalAmount,
  'status': instance.status,
  'notes': instance.notes,
  'is_deleted': instance.isDeleted,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'version': instance.version,
};
