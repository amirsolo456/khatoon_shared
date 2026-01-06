
/// اطلاعات فروشنده
class  SellerSummary {
  final String id;
  final String name;
  final String? profileImage;
  final double rating;
  final int totalSales;
  final bool isVerified;
  final DateTime joinedDate;

  SellerSummary({
    required this.id,
    required this.name,
    this.profileImage,
    this.rating = 0.0,
    this.totalSales = 0,
    this.isVerified = false,
    required this.joinedDate,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'profileImage': profileImage,
    'rating': rating,
    'totalSales': totalSales,
    'isVerified': isVerified,
    'joinedDate': joinedDate.toIso8601String(),
  };

  factory SellerSummary.fromMap(Map<String, dynamic> map) => SellerSummary(
    id: map['id'] as String,
    name: map['name'] as String,
    profileImage: map['profileImage'] as String?,
    rating: (map['rating'] as num).toDouble(),
    totalSales: (map['totalSales'] as num).toInt(),
    isVerified: map['isVerified'] as bool? ?? false,
    joinedDate: DateTime.parse(map['joinedDate']),
  );
}