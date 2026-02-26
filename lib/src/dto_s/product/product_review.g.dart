// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductReview _$ProductReviewFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'user_id',
      'user_name',
      'rating',
      'comment',
      'date',
    ],
  );
  return ProductReview(
    id: json['id'] as String,
    userId: json['user_id'] as String,
    userName: json['user_name'] as String,
    userImage: json['user_image'] as String?,
    rating: (json['rating'] as num).toDouble(),
    comment: json['comment'] as String,
    date: const DateTimeConverter().fromJson(json['date'] as String),
    images: (json['images'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    isVerifiedPurchase: json['is_verified_purchase'] as bool? ?? false,
  );
}

Map<String, dynamic> _$ProductReviewToJson(ProductReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_image': instance.userImage,
      'rating': instance.rating,
      'comment': instance.comment,
      'date': const DateTimeConverter().toJson(instance.date),
      'images': instance.images,
      'is_verified_purchase': instance.isVerifiedPurchase,
    };
