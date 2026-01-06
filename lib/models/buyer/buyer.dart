// buyer.dart
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:latlong2/latlong.dart';
import '../../services/conveters/converters.dart';
import '../address.dart';
import '../enums.dart';
import '../settings/account_settings/activity_info.dart';
import '../settings/account_settings/device_info.dart';
import '../settings/account_settings/preferences.dart';
import 'buyer_related.dart';
import 'buyer_stats.dart';
import '../enums.dart';
import '../address.dart';

part 'buyer.g.dart';

@JsonSerializable(explicitToJson: true)
class Buyer extends Equatable {
  @JsonKey(required: true)
  final String id;

  @JsonKey(required: true)
  final String userId;

  @MembershipLevelConverter()
  @JsonKey(defaultValue: MembershipLevel.regular)
  final MembershipLevel membershipLevel;

  final String? nationalId;

  @DateTimeNullableConverter()
  final DateTime? birthDate;

  @GenderConverter()
  final Gender? gender;

  @JsonKey(required: true)
  final String phone;

  final String? secondaryPhone;

  @JsonKey(defaultValue: [])
  final List<AddressWithId> addresses;

  final String? defaultShippingAddressId;
  final String? defaultBillingAddressId;

  @JsonKey(defaultValue: 0.0)
  final double walletBalance;

  @JsonKey(defaultValue: 0.0)
  final double creditLimit;

  @JsonKey(defaultValue: 0.0)
  final double totalSpent;

  @JsonKey(defaultValue: 0)
  final int loyaltyPoints;

  @JsonKey(defaultValue: 100)
  final int creditScore;

  final String? referralCode;
  final String? referredByUserId;

  @JsonKey(required: true)
  final PrivacySettings privacySettings;

  @JsonKey(required: true)
  final Preferences preferences;

  @JsonKey(required: true)
  final BuyerStats stats;

  @JsonKey(required: true)
  final ActivityInfo activityInfo;

  final DeviceInfo? deviceInfo;

  @LatLngNullableConverter()
  final LatLng? location;

  final String? city;
  final String? province;
  final String? postalCode;

  @JsonKey(defaultValue: true)
  final bool isActive;

  @JsonKey(defaultValue: false)
  final bool isBlocked;

  final String? blockReason;
  final String? notes;

  @DateTimeConverter()
  @JsonKey(required: true)
  final DateTime createdAt;

  @DateTimeConverter()
  @JsonKey(required: true)
  final DateTime updatedAt;

  @DateTimeConverter()
  @JsonKey(required: true)
  final DateTime membershipSince;

  Buyer({
    required this.id,
    required this.userId,
    this.membershipLevel = MembershipLevel.regular,
    this.nationalId,
    this.birthDate,
    this.gender,
    required this.phone,
    this.secondaryPhone,
    this.addresses = const [],
    this.defaultShippingAddressId,
    this.defaultBillingAddressId,
    this.walletBalance = 0.0,
    this.creditLimit = 0.0,
    this.totalSpent = 0.0,
    this.loyaltyPoints = 0,
    this.creditScore = 100,
    this.referralCode,
    this.referredByUserId,
    required this.privacySettings,
    required this.preferences,
    required this.stats,
    required this.activityInfo,
    this.deviceInfo,
    this.location,
    this.city,
    this.province,
    this.postalCode,
    this.isActive = true,
    this.isBlocked = false,
    this.blockReason,
    this.notes,
    required this.createdAt,
    required this.updatedAt,
    required this.membershipSince,
  });

  @override
  List<Object?> get props => [
    id,
    userId,
    membershipLevel,
    nationalId,
    birthDate,
    gender,
    phone,
    secondaryPhone,
    addresses,
    defaultShippingAddressId,
    defaultBillingAddressId,
    walletBalance,
    creditLimit,
    totalSpent,
    loyaltyPoints,
    creditScore,
    referralCode,
    referredByUserId,
    privacySettings,
    preferences,
    stats,
    activityInfo,
    deviceInfo,
    location,
    city,
    province,
    postalCode,
    isActive,
    isBlocked,
    blockReason,
    notes,
    createdAt,
    updatedAt,
    membershipSince,
  ];

  AddressWithId? get defaultShippingAddress {
    return addresses.firstWhere(
      (address) => address.id == defaultShippingAddressId,
      orElse: () => addresses.isNotEmpty
          ? addresses.first
          : AddressWithId(
              id: '',
              recipientName: '',
              recipientPhone: '',
              addressType: '',
              province: '',
              city: '',
              street: '',
              plaque: '',
              postalCode: '',
            ),
    );
  }

  AddressWithId? get defaultBillingAddress {
    return addresses.firstWhere(
      (address) => address.id == defaultBillingAddressId,
      orElse: () =>
          defaultShippingAddress ??
          AddressWithId(
            province: 'province',
            city: 'city',
            street: 'street',
            plaque: 'plaque',
            postalCode: 'postalCode',
            id: '',
            recipientName: '',
            recipientPhone: '',
            addressType: '',
          ),
    );
  }

  double get successRate {
    if (stats.totalOrders > 0) {
      return (stats.successfulOrders / stats.totalOrders) * 100;
    }
    return 0.0;
  }

  double get nextLevelThreshold {
    final thresholds = {
      MembershipLevel.regular: 0.0,
      MembershipLevel.silver: 1000000.0,
      MembershipLevel.gold: 5000000.0,
      MembershipLevel.platinum: 20000000.0,
    };
    return thresholds[membershipLevel] ?? 0.0;
  }

  bool get isEligibleForUpgrade => totalSpent >= nextLevelThreshold;

  Buyer copyWith({
    String? id,
    String? userId,
    MembershipLevel? membershipLevel,
    String? nationalId,
    DateTime? birthDate,
    Gender? gender,
    String? phone,
    String? secondaryPhone,
    List<AddressWithId>? addresses,
    String? defaultShippingAddressId,
    String? defaultBillingAddressId,
    double? walletBalance,
    double? creditLimit,
    double? totalSpent,
    int? loyaltyPoints,
    int? creditScore,
    String? referralCode,
    String? referredByUserId,
    PrivacySettings? privacySettings,
    Preferences? preferences,
    BuyerStats? stats,
    ActivityInfo? activityInfo,
    DeviceInfo? deviceInfo,
    LatLng? location,
    String? city,
    String? province,
    String? postalCode,
    bool? isActive,
    bool? isBlocked,
    String? blockReason,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? membershipSince,
  }) {
    return Buyer(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      membershipLevel: membershipLevel ?? this.membershipLevel,
      nationalId: nationalId ?? this.nationalId,
      birthDate: birthDate ?? this.birthDate,
      gender: gender ?? this.gender,
      phone: phone ?? this.phone,
      secondaryPhone: secondaryPhone ?? this.secondaryPhone,
      addresses: addresses ?? this.addresses,
      defaultShippingAddressId:
          defaultShippingAddressId ?? this.defaultShippingAddressId,
      defaultBillingAddressId:
          defaultBillingAddressId ?? this.defaultBillingAddressId,
      walletBalance: walletBalance ?? this.walletBalance,
      creditLimit: creditLimit ?? this.creditLimit,
      totalSpent: totalSpent ?? this.totalSpent,
      loyaltyPoints: loyaltyPoints ?? this.loyaltyPoints,
      creditScore: creditScore ?? this.creditScore,
      referralCode: referralCode ?? this.referralCode,
      referredByUserId: referredByUserId ?? this.referredByUserId,
      privacySettings: privacySettings ?? this.privacySettings,
      preferences: preferences ?? this.preferences,
      stats: stats ?? this.stats,
      activityInfo: activityInfo ?? this.activityInfo,
      deviceInfo: deviceInfo ?? this.deviceInfo,
      location: location ?? this.location,
      city: city ?? this.city,
      province: province ?? this.province,
      postalCode: postalCode ?? this.postalCode,
      isActive: isActive ?? this.isActive,
      isBlocked: isBlocked ?? this.isBlocked,
      blockReason: blockReason ?? this.blockReason,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      membershipSince: membershipSince ?? this.membershipSince,
    );
  }

  factory Buyer.fromJson(Map<String, dynamic> json) => _$BuyerFromJson(json);

  Map<String, dynamic> toJson() => _$BuyerToJson(this);

  Buyer addLoyaltyPoints(int points, {String reason = ''}) {
    return copyWith(
      loyaltyPoints: loyaltyPoints + points,
      activityInfo: activityInfo.copyWith(lastLoyaltyUpdate: DateTime.now()),
    );
  }

  Buyer updateMembershipLevel() {
    MembershipLevel newLevel = MembershipLevel.regular;

    if (totalSpent >= 20000000.0) {
      newLevel = MembershipLevel.platinum;
    } else if (totalSpent >= 5000000.0) {
      newLevel = MembershipLevel.gold;
    } else if (totalSpent >= 1000000.0) {
      newLevel = MembershipLevel.silver;
    }

    if (newLevel != membershipLevel) {
      return copyWith(membershipLevel: newLevel);
    }

    return this;
  }
}
