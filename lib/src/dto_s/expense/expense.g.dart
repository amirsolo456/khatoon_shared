// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Expense _$ExpenseFromJson(Map<String, dynamic> json) => Expense(
  id: (json['id'] as num).toInt(),
  date: DateTime.parse(json['date'] as String),
  category: json['category'] as String,
  amount: (json['amount'] as num).toDouble(),
  notes: json['notes'] as String?,
  relatedInvoiceId: (json['related_invoice_id'] as num?)?.toInt(),
  version: (json['version'] as num).toInt(),
  isDeleted: json['is_deleted'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$ExpenseToJson(Expense instance) => <String, dynamic>{
  'id': instance.id,
  'date': instance.date.toIso8601String(),
  'category': instance.category,
  'amount': instance.amount,
  'notes': instance.notes,
  'related_invoice_id': instance.relatedInvoiceId,
  'version': instance.version,
  'is_deleted': instance.isDeleted,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};
