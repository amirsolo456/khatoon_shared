// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) => Payment(
  id: (json['id'] as num).toInt(),
  sellerId: json['sellerId'] as String,
  sellerName: json['sellerName'] as String,
  status: (json['status'] as num).toInt(),
  totalAmount: (json['totalAmount'] as num).toDouble(),
  paidAmount: (json['paidAmount'] as num).toDouble(),
  paymentStatus: $enumDecode(_$PaymentStatusEnumMap, json['paymentStatus']),
  deliveryStatus: $enumDecode(_$DeliveryStatusEnumMap, json['deliveryStatus']),
  isSettled: json['isSettled'] as bool,
  deliveries: (json['deliveries'] as List<dynamic>)
      .map((e) => Delivery.fromJson(e as Map<String, dynamic>))
      .toList(),
  items: (json['items'] as List<dynamic>)
      .map((e) => PurchaseItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  payments: (json['payments'] as List<dynamic>)
      .map((e) => Payment.fromJson(e as Map<String, dynamic>))
      .toList(),
  date: (json['date'] as num).toInt(),
  notes: json['notes'] as String,
);

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
  'id': instance.id,
  'sellerId': instance.sellerId,
  'sellerName': instance.sellerName,
  'notes': instance.notes,
  'date': instance.date,
  'status': instance.status,
  'totalAmount': instance.totalAmount,
  'paidAmount': instance.paidAmount,
  'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus]!,
  'deliveryStatus': _$DeliveryStatusEnumMap[instance.deliveryStatus]!,
  'isSettled': instance.isSettled,
  'deliveries': instance.deliveries,
  'items': instance.items,
  'payments': instance.payments,
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
