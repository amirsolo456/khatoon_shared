// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PurchaseInvoice _$PurchaseInvoiceFromJson(Map<String, dynamic> json) =>
    PurchaseInvoice(
      id: (json['id'] as num).toInt(),
      sellerId: json['sellerId'] as String,
      sellerName: json['sellerName'] as String,
      notes: json['notes'] as String,
      date: (json['date'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      paidAmount: (json['paidAmount'] as num).toDouble(),
      paymentStatus: $enumDecode(_$PaymentStatusEnumMap, json['paymentStatus']),
      deliveryStatus: $enumDecode(
        _$DeliveryStatusEnumMap,
        json['deliveryStatus'],
      ),
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
    );

Map<String, dynamic> _$PurchaseInvoiceToJson(PurchaseInvoice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sellerId': instance.sellerId,
      'sellerName': instance.sellerName,
      'date': instance.date,
      'totalAmount': instance.totalAmount,
      'paidAmount': instance.paidAmount,
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus]!,
      'deliveryStatus': _$DeliveryStatusEnumMap[instance.deliveryStatus]!,
      'isSettled': instance.isSettled,
      'status': instance.status,
      'items': instance.items,
      'payments': instance.payments,
      'deliveries': instance.deliveries,
      'notes': instance.notes,
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
