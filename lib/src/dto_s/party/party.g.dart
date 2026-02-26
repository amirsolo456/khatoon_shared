// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'party.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Party _$PartyFromJson(Map<String, dynamic> json) => Party(
  id: (json['id'] as num).toInt(),
  type: json['type'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String?,
  address: json['address'] as String?,
  notes: json['notes'] as String?,
  invoiceId: (json['invoice_id'] as num).toInt(),
);

Map<String, dynamic> _$PartyToJson(Party instance) => <String, dynamic>{
  'id': instance.id,
  'invoice_id': instance.invoiceId,
  'type': instance.type,
  'name': instance.name,
  'phone': instance.phone,
  'address': instance.address,
  'notes': instance.notes,
};
