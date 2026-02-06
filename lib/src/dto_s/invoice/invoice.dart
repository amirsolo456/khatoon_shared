import 'package:json_annotation/json_annotation.dart';

part 'invoice.g.dart';

@JsonSerializable()
class Invoice {
  final String id;
  final String? invoiceNo;
  final String? type;
  final String? partyId;
  final double totalAmount;
  final String status;
  final int version;
  final bool isDeleted;
  final DateTime createdAt;
  final DateTime updatedAt;

  Invoice({
    required this.id,
    required this.invoiceNo,
    required this.type,
    required this.partyId,
    required this.totalAmount,
    required this.status,
    required this.version,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
  });
  


  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
}
