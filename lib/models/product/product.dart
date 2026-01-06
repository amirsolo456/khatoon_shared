import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:khatoon_shared/models/product/product_review.dart';

import '../../services/conveters/converters.dart';
import '../contact_info.dart';
import '../coordinates.dart';
import '../enums.dart';
import '../health/vaccination.dart';
import '../pricing/price_history.dart';
import '../seller/seller_info.dart';
import '../shipping/shipping_info.dart';
import '../warranty/warranty_info.dart';
import 'product_related.dart';
import 'product_summary.dart';

part 'product.g.dart';

@JsonSerializable(explicitToJson: true)
class Product extends Equatable {
  @JsonKey(required: true)
  final String id;
  @JsonKey(required: true)
  final String title;

  @JsonKey(required: true)
  final String description;

  @JsonKey(required: true)
  final double price;
  final double? originalPrice;

  @JsonKey(required: true)
  final int stock;
  final String? thumbnailUrl;

  @JsonKey(defaultValue: [])
  final List<String> imageUrls;

  @JsonKey(required: true)
  final String tagNumber;
  final String? name;
  @JsonKey(required: true)
  final AnimalType type;
  final String? breed;
  final String? color;

  @DateTimeNullableConverter()
  final DateTime? birthDate;
  final double? weight;

  @JsonKey(defaultValue: 'kg')
  final String? weightUnit;
  final String? size;
  final ProductSummary? productSummary;

  @JsonKey(required: true)
  final HealthStatus healthStatus;
  final String? healthNotes;

  @JsonKey(defaultValue: [])
  final List<Vaccination> vaccinations;

  @JsonKey(required: true)
  final ReproductionStatus reproductionStatus;
  final String? reproductionNotes;

  @DateTimeNullableConverter()
  final DateTime? lastCheckupDate;
  final String? location;
  final String? address;

  @LatLngNullableConverter()
  final Coordinates? coordinates;

  @JsonKey(required: true)
  final ContactInfo sellerContact;

  @JsonKey(required: true)
  final SellerInfo seller;

  @JsonKey(defaultValue: true)
  final bool isAvailable;

  @JsonKey(defaultValue: false)
  final bool isVerified;

  @JsonKey(defaultValue: false)
  final bool isFeatured;

  @JsonKey(defaultValue: 0.0)
  final double rating;

  @JsonKey(defaultValue: 0)
  final int reviewCount;

  @JsonKey(defaultValue: [])
  final List<ProductReview> reviews;

  @JsonKey(defaultValue: [])
  final List<String> tags;

  @JsonKey(defaultValue: [])
  final List<String> categories;

  @JsonKey(defaultValue: {})
  final Map<String, String> specifications;

  @JsonKey(required: true)
  final ShippingInfo shippingInfo;

  final WarrantyInfo? warranty;

  @JsonKey(defaultValue: [])
  final List<RelatedProduct> relatedProducts;

  @DateTimeConverter()
  @JsonKey(required: true)
  final DateTime createdAt;

  @DateTimeConverter()
  @JsonKey(required: true)
  final DateTime updatedAt;

  @DateTimeNullableConverter()
  final DateTime? availableUntil;

  @JsonKey(defaultValue: 0)
  final int viewsCount;

  @JsonKey(defaultValue: 0)
  final int favoritesCount;

  @JsonKey(defaultValue: [])
  final List<String> documents;

  @JsonKey(defaultValue: [])
  final List<PriceHistory> priceHistory;

  @JsonKey(defaultValue: true)
  final bool hasDelivery;

  @JsonKey(defaultValue: false)
  final bool hasPickup;

  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    this.originalPrice,
    required this.stock,
    this.thumbnailUrl,
    this.imageUrls = const [],
    required this.tagNumber,
    this.name,
    required this.type,
    this.breed,
    this.color,
    this.birthDate,
    this.weight,
    this.weightUnit = 'kg',
    this.size,
    this.productSummary,
    required this.healthStatus,
    this.healthNotes,
    this.vaccinations = const [],
    required this.reproductionStatus,
    this.reproductionNotes,
    this.lastCheckupDate,
    this.location,
    this.address,
    this.coordinates,
    required this.sellerContact,
    required this.seller,
    this.isAvailable = true,
    this.isVerified = false,
    this.isFeatured = false,
    this.rating = 0.0,
    this.reviewCount = 0,
    this.reviews = const [],
    this.tags = const [],
    this.categories = const [],
    this.specifications = const {},
    required this.shippingInfo,
    this.warranty,
    this.relatedProducts = const [],
    required this.createdAt,
    required this.updatedAt,
    this.availableUntil,
    this.viewsCount = 0,
    this.favoritesCount = 0,
    this.documents = const [],
    this.priceHistory = const [],
    this.hasDelivery = true,
    this.hasPickup = false,
  });

  Product copyWith({
    String? id,
    String? title,
    String? description,
    double? price,
    double? originalPrice,
    int? stock,
    String? thumbnailUrl,
    List<String>? imageUrls,
    String? tagNumber,
    String? name,
    AnimalType? type,
    String? breed,
    String? color,
    DateTime? birthDate,
    double? weight,
    String? weightUnit,
    String? size,
    ProductSummary? productSummary,
    HealthStatus? healthStatus,
    String? healthNotes,
    List<Vaccination>? vaccinations,
    ReproductionStatus? reproductionStatus,
    String? reproductionNotes,
    DateTime? lastCheckupDate,
    String? location,
    String? address,
    Coordinates? coordinates,
    ContactInfo? sellerContact,
    SellerInfo? seller,
    bool? isAvailable,
    bool? isVerified,
    bool? isFeatured,
    double? rating,
    int? reviewCount,
    List<ProductReview>? reviews,
    List<String>? tags,
    List<String>? categories,
    Map<String, String>? specifications,
    ShippingInfo? shippingInfo,
    WarrantyInfo? warranty,
    List<RelatedProduct>? relatedProducts,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? availableUntil,
    int? viewsCount,
    int? favoritesCount,
    List<String>? documents,
    List<PriceHistory>? priceHistory,
    bool? hasDelivery,
    bool? hasPickup,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      originalPrice: originalPrice ?? this.originalPrice,
      stock: stock ?? this.stock,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      imageUrls: imageUrls ?? this.imageUrls,
      tagNumber: tagNumber ?? this.tagNumber,
      name: name ?? this.name,
      type: type ?? this.type,
      breed: breed ?? this.breed,
      color: color ?? this.color,
      birthDate: birthDate ?? this.birthDate,
      weight: weight ?? this.weight,
      weightUnit: weightUnit ?? this.weightUnit,
      size: size ?? this.size,
      productSummary: productSummary ?? this.productSummary,
      healthStatus: healthStatus ?? this.healthStatus,
      healthNotes: healthNotes ?? this.healthNotes,
      vaccinations: vaccinations ?? this.vaccinations,
      reproductionStatus: reproductionStatus ?? this.reproductionStatus,
      reproductionNotes: reproductionNotes ?? this.reproductionNotes,
      lastCheckupDate: lastCheckupDate ?? this.lastCheckupDate,
      location: location ?? this.location,
      address: address ?? this.address,
      coordinates: coordinates ?? this.coordinates,
      sellerContact: sellerContact ?? this.sellerContact,
      seller: seller ?? this.seller,
      isAvailable: isAvailable ?? this.isAvailable,
      isVerified: isVerified ?? this.isVerified,
      isFeatured: isFeatured ?? this.isFeatured,
      rating: rating ?? this.rating,
      reviewCount: reviewCount ?? this.reviewCount,
      reviews: reviews ?? this.reviews,
      tags: tags ?? this.tags,
      categories: categories ?? this.categories,
      specifications: specifications ?? this.specifications,
      shippingInfo: shippingInfo ?? this.shippingInfo,
      warranty: warranty ?? this.warranty,
      relatedProducts: relatedProducts ?? this.relatedProducts,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      availableUntil: availableUntil ?? this.availableUntil,
      viewsCount: viewsCount ?? this.viewsCount,
      favoritesCount: favoritesCount ?? this.favoritesCount,
      documents: documents ?? this.documents,
      priceHistory: priceHistory ?? this.priceHistory,
      hasDelivery: hasDelivery ?? this.hasDelivery,
      hasPickup: hasPickup ?? this.hasPickup,
    );
  }

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    price,
    originalPrice,
    stock,
    thumbnailUrl,
    imageUrls,
    tagNumber,
    name,
    type,
    breed,
    color,
    birthDate,
    weight,
    weightUnit,
    size,
    productSummary,
    healthStatus,
    healthNotes,
    vaccinations,
    reproductionStatus,
    reproductionNotes,
    lastCheckupDate,
    location,
    address,
    coordinates,
    sellerContact,
    seller,
    isAvailable,
    isVerified,
    isFeatured,
    rating,
    reviewCount,
    reviews,
    tags,
    categories,
    specifications,
    shippingInfo,
    warranty,
    relatedProducts,
    createdAt,
    updatedAt,
    availableUntil,
    viewsCount,
    favoritesCount,
    documents,
    priceHistory,
    hasDelivery,
    hasPickup,
  ];

  double? get discount {
    if (originalPrice != null && originalPrice! > price) {
      return ((originalPrice! - price) / originalPrice!) * 100;
    }
    return null;
  }

  bool get inStock => stock > 0 && isAvailable;

  bool get hasDiscount => discount != null;

  int? get ageInMonths {
    if (birthDate == null) return null;
    final now = DateTime.now();
    final ageInMonths =
        (now.year - birthDate!.year) * 12 + now.month - birthDate!.month;
    return ageInMonths;
  }

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  ProductSummary toSummary() => ProductSummary(
    id: id,
    title: title,
    price: price,
    stock: stock,
    thumbnailUrl: thumbnailUrl,
    rating: rating,
    reviewCount: reviewCount,
    isFavorite: false,
  );
}

/*
import 'package:khatoon_shared/models/contact_info.dart';

import '../enums.dart';

class Product {
  final String id;
  final String title;
  final double price;
  final int stock;
  final String? thumbnailUrl;
  final String tagNumber;
  final String? name;
  final AnimalType type;
  final String? breed;
  final String? imageUrl;
  final ProductSummary? productSummary;
  final HealthStatus healthStatus;
  final ReproductionStatus reproductionStatus;
  final int? lastCheckupDate;
  final String? location;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.stock,
    required this.tagNumber,
    this.name,
    required this.type,
    this.breed,
    this.imageUrl,
    this.productSummary,
    required this.healthStatus,
    required this.reproductionStatus,
    this.lastCheckupDate,
    this.location,
    this.thumbnailUrl,
  });

  // تابع toMap برای تبدیل تمام فیلدها به Map (در صورت نیاز)
  Map<String, dynamic> toMap() => {
    'id': id,
    'title': title,
    'price': price,
    'stock': stock,
    'tagNumber': tagNumber,
    'name': name,
    'type': type.index, // فرض بر این که AnimalType یک enum است و index ذخیره می‌شود
    'breed': breed,
    'imageUrl': imageUrl,
    'productSummary': productSummary?.toMap(),
    'healthStatus': healthStatus.index,
    'reproductionStatus': reproductionStatus.index,
    'lastCheckupDate': lastCheckupDate,
    'location': location,
    'thumbnailUrl': thumbnailUrl,
  };

  // تابع fromMap برای ساخت Product از Map
  factory Product.fromMap(Map<String, dynamic> map) {
    // فرض بر این که enum‌ها به صورت index ذخیره شده‌اند
    // اگر در map به صورت string ذخیره شده‌اند، باید تبدیل انجام دهیم.
    // در اینجا فرض می‌کنیم که enum‌ها به صورت index هستند.
    return Product(
      id: map['id'] as String,
      title: map['title'] as String,
      price: (map['price'] as num).toDouble(),
      stock: (map['stock'] as num).toInt(),
      tagNumber: map['tagNumber'] as String,
      name: map['name'] as String?,
      type: AnimalType.values[map['type'] as int],
      breed: map['breed'] as String?,
      imageUrl: map['imageUrl'] as String?,
      productSummary: map['productSummary'] != null
          ? ProductSummary.fromMap(map['productSummary'] as Map<String, dynamic>)
          : null,
      healthStatus: HealthStatus.values[map['healthStatus'] as int],
      reproductionStatus: ReproductionStatus.values[map['reproductionStatus'] as int],
      lastCheckupDate: map['lastCheckupDate'] as int?,
      location: map['location'] as String?,
      thumbnailUrl: map['thumbnailUrl'] as String?,
    );
  }

  // تابع برای تبدیل به ProductSummary
  ProductSummary toProductSummary() => ProductSummary(
    id: id,
    title: title,
    price: price,
    stock: stock,
    thumbnailUrl: thumbnailUrl,
  );
}*/
