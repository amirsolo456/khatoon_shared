import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:latlong2/latlong.dart';
import '../../services/conveters/converters.dart';
import '../address.dart';
import '../bank/bank_info.dart';
import '../contact_info.dart';
import '../enums.dart';
import '../meta_info.dart';
import '../product/product_summary.dart';
import '../settings/account_settings/notification_settings.dart';
import 'seller_stats.dart';

part 'seller.g.dart';

@JsonSerializable()
class Seller extends Equatable{
  final String id;
  final String userId;

  @SellerTypeConverter()
  @JsonKey(required: true)
  final SellerType type;

  // اطلاعات هویتی
  final String? nationalId;
  final String? economicCode;
  final String? registrationNumber;

  @JsonKey(required: true)
  final String storeName;
  @JsonKey(required: true)
  final String storeSlug;
  @JsonKey(required: true)
  final String storeDescription;
  final String? storeLogoUrl;
  final String? storeBannerUrl;

  @JsonKey(required: true)
  final String phone;
  final String? secondaryPhone;
  final String? website;

  @JsonKey(required: true)
  final Address officeAddress;
  final Address? warehouseAddress;

  @JsonKey(required: true)
  final BankInfo bankInfo;
  @JsonKey(defaultValue: 9.0)
  final double taxPercentage;

  @JsonKey(
    fromJson: _verificationStatusFromJson,
    toJson: _verificationStatusToJson,
  )
  @VerificationStatusConverter()
  @JsonKey(defaultValue: VerificationStatus.pending)
  final VerificationStatus verificationStatus;
  @JsonKey(defaultValue: [])
  final List<String> verificationDocuments;
  @DateTimeNullableConverter()
  final DateTime? verifiedAt;
  final String? verificationNote;

  @JsonKey(defaultValue: 0.0)
  final double rating;
  @JsonKey(defaultValue: 0)
  final int totalRatings;

  @JsonKey(defaultValue: 0.0)
  final double responseRate;

  @JsonKey(defaultValue: 0)
  final int responseTimeHours;

  @JsonKey(defaultValue: 0.0)
  final double minimumOrderAmount;

  @JsonKey(defaultValue: false)
  final bool hasFreeShipping;

  final double? freeShippingThreshold;

  @JsonKey(defaultValue: 7)
  final int returnPolicyDays;

  @JsonKey(defaultValue: 0)
  final int totalProducts;

  @JsonKey(defaultValue: 0)
  final int totalSales;

  @JsonKey(defaultValue: 0.0)
  final double totalRevenue;

  @DateTimeConverter()
  @JsonKey(required: true)
  final DateTime joinedDate;

  @DateTimeNullableConverter()
  final DateTime? lastLogin;

  @DateTimeNullableConverter()
  final DateTime? subscriptionExpiry;

  @JsonKey(required: true)
  final NotificationSettings notificationSettings;

  @JsonKey(required: true)
  final MetaInfo metaInfo;

  @JsonKey(defaultValue: true)
  final bool isActive;

  @JsonKey(defaultValue: false)
  final bool isFeatured;

  @JsonKey(defaultValue: 5.0)
  final double commissionRate;

  @JsonKey(required: true)
  final SellerStats stats;

  final String name;
  final String? businessName;
  final ContactInfo contact;
  final Address? address;
  final List<String> categories;
  final int ratingCount;
  final List<ProductSummary> products;
  final bool verified;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final Map<String, dynamic> metadata;
  @LatLngConverter()
  final LatLng? location;

  Seller({
    required this.id,
    required this.userId,
    required this.type,
    this.nationalId,
    this.economicCode,
    this.registrationNumber,
    required this.storeName,
    required this.storeSlug,
    required this.storeDescription,
    this.storeLogoUrl,
    this.storeBannerUrl,
    required this.phone,
    this.secondaryPhone,
    this.website,
    required this.officeAddress,
    this.warehouseAddress,
    required this.bankInfo,
    this.taxPercentage = 9.0,
    this.verificationStatus = VerificationStatus.pending,
    this.verificationDocuments = const [],
    this.verifiedAt,
    this.verificationNote,
    this.rating = 0.0,
    this.totalRatings = 0,
    this.responseRate = 0.0,
    this.responseTimeHours = 0,
    this.minimumOrderAmount = 0.0,
    this.hasFreeShipping = false,
    this.freeShippingThreshold,
    this.returnPolicyDays = 7,
    this.totalProducts = 0,
    this.totalSales = 0,
    this.totalRevenue = 0.0,
    required this.joinedDate,
    this.lastLogin,
    this.subscriptionExpiry,
    required this.notificationSettings,
    required this.metaInfo,
    this.isActive = true,
    this.isFeatured = false,
    this.commissionRate = 5.0,
    required this.stats,
    required this.name,
    this.businessName,
    ContactInfo? contact,
    this.address,
    List<String>? categories,
    // this.rating = 0.0,
    this.ratingCount = 0,
    List<ProductSummary>? products,
    this.verified = false,
    DateTime? createdAt,
    this.updatedAt,
    Map<String, dynamic>? metadata,
    this.location,
  }) : contact = contact ?? ContactInfo(name: '', phone: ''),
       categories = categories ?? [],
       products = products ?? [],
       createdAt = createdAt ?? DateTime.now(),
       metadata = metadata ?? {};

  factory Seller.fromJson(Map<String, dynamic> json) => _$SellerFromJson(json);

  Map<String, dynamic> toJson() => _$SellerToJson(this);

  /*  static SellerType _sellerTypeFromJson(String json) =>
      SellerType.values.firstWhere((e) => e.name == json);

  static String _sellerTypeToJson(SellerType type) => type.name;*/

  static VerificationStatus _verificationStatusFromJson(String json) =>
      VerificationStatus.values.firstWhere((e) => e.name == json);

  static String _verificationStatusToJson(VerificationStatus status) =>
      status.name;

  bool get isVerified => verificationStatus == VerificationStatus.verified;

  double get averageRating => totalRatings > 0 ? rating / totalRatings : 0.0;

  Seller copyWith({
    String? id,
    String? userId,
    SellerType? type,
    String? nationalId,
    String? economicCode,
    String? registrationNumber,
    String? storeName,
    String? storeSlug,
    String? storeDescription,
    String? storeLogoUrl,
    String? storeBannerUrl,
    String? phone,
    String? secondaryPhone,
    String? website,
    Address? officeAddress,
    Address? warehouseAddress,
    BankInfo? bankInfo,
    double? taxPercentage,
    VerificationStatus? verificationStatus,
    List<String>? verificationDocuments,
    DateTime? verifiedAt,
    String? verificationNote,
    double? rating,
    int? totalRatings,
    double? responseRate,
    int? responseTimeHours,
    double? minimumOrderAmount,
    bool? hasFreeShipping,
    double? freeShippingThreshold,
    int? returnPolicyDays,
    int? totalProducts,
    int? totalSales,
    double? totalRevenue,
    DateTime? joinedDate,
    DateTime? lastLogin,
    DateTime? subscriptionExpiry,
    NotificationSettings? notificationSettings,
    MetaInfo? metaInfo,
    bool? isActive,
    bool? isFeatured,
    double? commissionRate,
    SellerStats? stats,
    String? name,
    String? businessName,
    ContactInfo? contact,
    Address? address,
    List<String>? categories,
    int? ratingCount,
    List<ProductSummary>? products,
    bool? verified,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  }) {
    return Seller(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      nationalId: nationalId ?? this.nationalId,
      economicCode: economicCode ?? this.economicCode,
      registrationNumber: registrationNumber ?? this.registrationNumber,
      storeName: storeName ?? this.storeName,
      storeSlug: storeSlug ?? this.storeSlug,
      storeDescription: storeDescription ?? this.storeDescription,
      storeLogoUrl: storeLogoUrl ?? this.storeLogoUrl,
      storeBannerUrl: storeBannerUrl ?? this.storeBannerUrl,
      phone: phone ?? this.phone,
      secondaryPhone: secondaryPhone ?? this.secondaryPhone,
      website: website ?? this.website,
      officeAddress: officeAddress ?? this.officeAddress,
      warehouseAddress: warehouseAddress ?? this.warehouseAddress,
      bankInfo: bankInfo ?? this.bankInfo,
      taxPercentage: taxPercentage ?? this.taxPercentage,
      verificationStatus: verificationStatus ?? this.verificationStatus,
      verificationDocuments:
          verificationDocuments ?? this.verificationDocuments,
      verifiedAt: verifiedAt ?? this.verifiedAt,
      verificationNote: verificationNote ?? this.verificationNote,
      rating: rating ?? this.rating,
      totalRatings: totalRatings ?? this.totalRatings,
      responseRate: responseRate ?? this.responseRate,
      responseTimeHours: responseTimeHours ?? this.responseTimeHours,
      minimumOrderAmount: minimumOrderAmount ?? this.minimumOrderAmount,
      hasFreeShipping: hasFreeShipping ?? this.hasFreeShipping,
      freeShippingThreshold:
          freeShippingThreshold ?? this.freeShippingThreshold,
      returnPolicyDays: returnPolicyDays ?? this.returnPolicyDays,
      totalProducts: totalProducts ?? this.totalProducts,
      totalSales: totalSales ?? this.totalSales,
      totalRevenue: totalRevenue ?? this.totalRevenue,
      joinedDate: joinedDate ?? this.joinedDate,
      lastLogin: lastLogin ?? this.lastLogin,
      subscriptionExpiry: subscriptionExpiry ?? this.subscriptionExpiry,
      notificationSettings: notificationSettings ?? this.notificationSettings,
      metaInfo: metaInfo ?? this.metaInfo,
      isActive: isActive ?? this.isActive,
      isFeatured: isFeatured ?? this.isFeatured,
      commissionRate: commissionRate ?? this.commissionRate,
      stats: stats ?? this.stats,
      name: name ?? this.name,
      businessName: businessName ?? this.businessName,
      contact: contact ?? this.contact,
      address: address ?? this.address,
      categories: categories ?? List.from(this.categories),
      ratingCount: ratingCount ?? this.ratingCount,
      products: products ?? List.from(this.products),
      verified: verified ?? this.verified,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      metadata: metadata ?? Map.from(this.metadata),
    );
  }

/*  Seller({
    required this.id,
    required this.userId,
    required this.type,
    this.nationalId,
    this.economicCode,
    this.registrationNumber,
    required this.storeName,
    required this.storeSlug,
    required this.storeDescription,
    this.storeLogoUrl,
    this.storeBannerUrl,
    required this.phone,
    this.secondaryPhone,
    this.website,
    required this.officeAddress,
    this.warehouseAddress,
    required this.bankInfo,
    this.taxPercentage = 9.0,
    this.verificationStatus = VerificationStatus.pending,
    this.verificationDocuments = const [],
    this.verifiedAt,
    this.verificationNote,
    this.rating = 0.0,
    this.totalRatings = 0,
    this.responseRate = 0.0,
    this.responseTimeHours = 0,
    this.minimumOrderAmount = 0.0,
    this.hasFreeShipping = false,
    this.freeShippingThreshold,
    this.returnPolicyDays = 7,
    this.totalProducts = 0,
    this.totalSales = 0,
    this.totalRevenue = 0.0,
    required this.joinedDate,
    this.lastLogin,
    this.subscriptionExpiry,
    required this.notificationSettings,
    required this.metaInfo,
    this.isActive = true,
    this.isFeatured = false,
    this.commissionRate = 5.0,
    required this.stats,

    required this.name,
    this.businessName,
    required this.contact,
    this.address,
    required this.categories,
    required this.ratingCount,
    required this.products,
    required this.verified,
    required this.createdAt,
    this.updatedAt,
    required this.metadata,
    this.location,
  });*/

  @override
  List<Object?> get props => [
    id,
    userId,
    type,
    nationalId,
    economicCode,
    registrationNumber,
    storeName,
    storeSlug,
    storeDescription,
    storeLogoUrl,
    storeBannerUrl,
    phone,
    secondaryPhone,
    website,
    officeAddress,
    warehouseAddress,
    bankInfo,
    taxPercentage,
    verificationStatus,
    verificationDocuments,
    verifiedAt,
    verificationNote,
    rating,
    totalRatings,
    responseRate,
    responseTimeHours,
    minimumOrderAmount,
    hasFreeShipping,
    freeShippingThreshold,
    returnPolicyDays,
    totalProducts,
    totalSales,
    totalRevenue,
    joinedDate,
    lastLogin,
    subscriptionExpiry,
    notificationSettings,
    metaInfo,
    isActive,
    isFeatured,
    commissionRate,
    stats,
  ];


}
