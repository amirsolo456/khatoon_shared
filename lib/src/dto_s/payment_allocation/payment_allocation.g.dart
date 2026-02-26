// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_allocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentAllocation _$PaymentAllocationFromJson(Map<String, dynamic> json) =>
    PaymentAllocation(
      id: (json['id'] as num).toInt(),
      paymentId: (json['payment_id'] as num).toInt(),
      invoiceId: (json['invoice_id'] as num).toInt(),
      amountAllocated: (json['amount_allocated'] as num).toDouble(),
    );

Map<String, dynamic> _$PaymentAllocationToJson(PaymentAllocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payment_id': instance.paymentId,
      'invoice_id': instance.invoiceId,
      'amount_allocated': instance.amountAllocated,
    };
