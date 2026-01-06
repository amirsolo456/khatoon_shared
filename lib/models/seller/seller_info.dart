import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../services/conveters/converters.dart';
part 'seller_info.g.dart';
@JsonSerializable()
class SellerInfo extends Equatable {
  @JsonKey(required: true)
  final String id;

  @JsonKey(required: true)
  final String name;

  final String? profileImage;

  @JsonKey(defaultValue: 0.0)
  final double rating;

  @JsonKey(defaultValue: 0)
  final int totalSales;

  @JsonKey(defaultValue: false)
  final bool isVerified;

  @DateTimeConverter()
  @JsonKey(required: true)
  final DateTime joinedDate;

  SellerInfo({
    required this.id,
    required this.name,
    this.profileImage,
    this.rating = 0.0,
    this.totalSales = 0,
    this.isVerified = false,
    required this.joinedDate,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    profileImage,
    rating,
    totalSales,
    isVerified,
    joinedDate,
  ];

  factory SellerInfo.fromJson(Map<String, dynamic> json) =>
      _$SellerInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SellerInfoToJson(this);
}
