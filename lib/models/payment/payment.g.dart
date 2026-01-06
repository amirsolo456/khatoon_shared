// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map json) => Payment(
  id: (json['id'] as num).toInt(),
  sellerId: json['seller_id'] as String,
  sellerName: json['seller_name'] as String,
  status: (json['status'] as num).toInt(),
  totalAmount: (json['total_amount'] as num).toDouble(),
  paidAmount: (json['paid_amount'] as num).toDouble(),
  paymentStatus: $enumDecode(_$PaymentStatusEnumMap, json['payment_status']),
  deliveryStatus: $enumDecode(_$DeliveryStatusEnumMap, json['delivery_status']),
  isSettled: json['is_settled'] as bool,
  deliveries: (json['deliveries'] as List<dynamic>)
      .map((e) => Delivery.fromJson(Map<String, dynamic>.from(e as Map)))
      .toList(),
  items: (json['items'] as List<dynamic>)
      .map((e) => PurchaseItem.fromJson(Map<String, dynamic>.from(e as Map)))
      .toList(),
  payments: (json['payments'] as List<dynamic>)
      .map((e) => Payment.fromJson(Map<String, dynamic>.from(e as Map)))
      .toList(),
  date: (json['date'] as num).toInt(),
  notes: json['notes'] as String,
);

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
  'id': instance.id,
  'seller_id': instance.sellerId,
  'seller_name': instance.sellerName,
  'notes': instance.notes,
  'date': instance.date,
  'status': instance.status,
  'total_amount': instance.totalAmount,
  'paid_amount': instance.paidAmount,
  'payment_status': _$PaymentStatusEnumMap[instance.paymentStatus]!,
  'delivery_status': _$DeliveryStatusEnumMap[instance.deliveryStatus]!,
  'is_settled': instance.isSettled,
  'deliveries': instance.deliveries.map((e) => e.toJson()).toList(),
  'items': instance.items.map((e) => e.toJson()).toList(),
  'payments': instance.payments.map((e) => e.toJson()).toList(),
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.unpaid: 'unpaid',
  PaymentStatus.partial: 'partial',
  PaymentStatus.paid: 'paid',
};

const _$DeliveryStatusEnumMap = {
  DeliveryStatus.pending: 'pending',
  DeliveryStatus.shipped: 'shipped',
  DeliveryStatus.delivered: 'delivered',
};
