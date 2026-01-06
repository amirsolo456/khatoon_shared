
/// خلاصهٔ سفارش/خرید برای تاریخچه
class OrderSummary {
  final String orderId;
  final DateTime createdAt;
  final double totalAmount;
  final int itemCount;
  final String status;

  OrderSummary({
    required this.orderId,
    required this.createdAt,
    required this.totalAmount,
    required this.itemCount,
    required this.status,
  });

  Map<String, dynamic> toMap() => {
    'orderId': orderId,
    'createdAt': createdAt.toIso8601String(),
    'totalAmount': totalAmount,
    'itemCount': itemCount,
    'status': status,
  };

  factory OrderSummary.fromMap(Map<String, dynamic> map) => OrderSummary(
    orderId: map['orderId'] as String,
    createdAt: DateTime.parse(map['createdAt'] as String),
    totalAmount: (map['totalAmount'] as num).toDouble(),
    itemCount: (map['itemCount'] as num).toInt(),
    status: map['status'] as String,
  );
}
