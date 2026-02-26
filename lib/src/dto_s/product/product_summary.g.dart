// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductSummary _$ProductSummaryFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['id', 'title', 'price', 'stock']);
  return ProductSummary(
    id: json['id'] as String,
    title: json['title'] as String,
    price: (json['price'] as num).toDouble(),
    rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
    reviewCount: (json['review_count'] as num?)?.toInt() ?? 0,
    isFavorite: json['is_favorite'] as bool? ?? false,
    thumbnailUrl: json['thumbnail_url'] as String?,
    stock: (json['stock'] as num).toInt(),
  );
}

Map<String, dynamic> _$ProductSummaryToJson(ProductSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'stock': instance.stock,
      'thumbnail_url': instance.thumbnailUrl,
      'rating': instance.rating,
      'review_count': instance.reviewCount,
      'is_favorite': instance.isFavorite,
    };
