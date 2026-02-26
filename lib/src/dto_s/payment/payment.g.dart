// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) => Payment(
  id: (json['id'] as num).toInt(),
  amount: (json['amount'] as num).toDouble(),
  direction: json['direction'] as String,
  paymentMethod: json['payment_method'] as String?,
  fromPartyId: (json['from_party_id'] as num?)?.toInt(),
  toPartyId: (json['to_party_id'] as num?)?.toInt(),
  reference: json['reference'] as String?,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
  'id': instance.id,
  'amount': instance.amount,
  'direction': instance.direction,
  'payment_method': instance.paymentMethod,
  'from_party_id': instance.fromPartyId,
  'to_party_id': instance.toPartyId,
  'reference': instance.reference,
  'notes': instance.notes,
};
