


import 'package:json_annotation/json_annotation.dart';

import 'delivery.dart';
import 'enums.dart';
import 'payment.dart';
import 'purchase_item.dart';
part 'purchase_invoice.g.dart';
@JsonSerializable()
class PurchaseInvoice  {
  final int id;
  final String sellerId;
  final String sellerName;
  final int date;
  final double totalAmount;
  final double paidAmount;
  final PaymentStatus paymentStatus; // 'paid', 'partial', 'unpaid'
  final DeliveryStatus deliveryStatus; // 'delivered', 'partial', 'pending'
  final bool isSettled;
  final int status;
  final List<PurchaseItem> items;
  final List<Payment> payments;
  final List<Delivery> deliveries;
  final String notes;

  const PurchaseInvoice({
    required this.id,
    required this.sellerId,
    required this.sellerName,
    required this.notes,
    required this.date,
    required this.status,
    required this.totalAmount,
    required this.paidAmount,
    required this.paymentStatus,
    required this.deliveryStatus,
    required this.isSettled,
    required this.deliveries,
    required this.items,
    required this.payments,
  });

/*  @override
  List<Object?> get props => <Object?>[
    id,
    sellerId,
    sellerName,
    notes,
    date,
    status,
    totalAmount,
    paidAmount,
    paymentStatus,
    deliveryStatus,
    isSettled,
    deliveries,
    items,
    payments,
  ];*/

  /// مبلغ باقی‌مانده = کل مبلغ - مبلغ پرداخت شده
  double get remainingAmount => totalAmount - paidAmount;

  /// آیا پرداخت کامل شده؟
  bool get isPaidInFull => remainingAmount <= 0;

  PurchaseInvoice copyWith({
    int? id,
    String? sellerId,
    int? date,
    double? totalAmount,
    double? paidAmount,
    PaymentStatus? paymentStatus,
    DeliveryStatus? deliveryStatus,
    bool? isSettled,
    int? status,
    List<Delivery>? deliveries,
    List<Payment>? payments,
    List<PurchaseItem>? items,
  }) {
    return PurchaseInvoice(
      id: id ?? this.id,
      sellerId: sellerId ?? this.sellerId,
      date: date ?? this.date,
      totalAmount: totalAmount ?? this.totalAmount,
      paidAmount: paidAmount ?? this.paidAmount,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      deliveryStatus: deliveryStatus ?? this.deliveryStatus,
      isSettled: isSettled ?? this.isSettled,
      status: status ?? this.status,
      sellerName: sellerName,
      payments: payments ?? this.payments,
      deliveries: deliveries ?? this.deliveries,
      items: items ?? this.items,
      notes: '',
    );
  }

  factory PurchaseInvoice.fromJson(Map<String, dynamic> json) => _$PurchaseInvoiceFromJson(json);

  Map<String, dynamic> toJson() => _$PurchaseInvoiceToJson(this);
}