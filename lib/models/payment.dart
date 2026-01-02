

import 'package:json_annotation/json_annotation.dart';

import 'delivery.dart';
import 'enums.dart';
import 'purchase_item.dart';
part 'payment.g.dart';
@JsonSerializable()
class Payment   {
  final int id;
  final String sellerId;
  final String sellerName;
  final String notes;
  final int date;
  final int status;
  final double totalAmount;
  final double paidAmount;
  final PaymentStatus paymentStatus;
  final DeliveryStatus deliveryStatus;
  final bool isSettled;
  final List<Delivery> deliveries;
  final List<PurchaseItem> items;
  final List<Payment> payments;

  const Payment({
    required this.id,
    required this.sellerId,
    required this.sellerName,
    required this.status,
    required this.totalAmount,
    required this.paidAmount,
    required this.paymentStatus,
    required this.deliveryStatus,
    required this.isSettled,
    required this.deliveries,
    required this.items,
    required this.payments,
    required this.date,
    required this.notes,
  });

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  Payment toEntity() {
    return Payment(
      id: id,
      date: date,
      notes: notes,
      sellerId: sellerId,
      sellerName: sellerName,
      status: status,
      totalAmount: totalAmount,
      paidAmount: paidAmount,
      paymentStatus: paymentStatus,
      deliveryStatus: deliveryStatus,
      isSettled: isSettled,
      deliveries: deliveries,
      items: items,
      payments: payments,
    );
  }


}