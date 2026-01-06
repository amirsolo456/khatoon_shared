import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

import 'contact_info.dart';
import 'enums.dart';

part 'coordinates.g.dart';

@JsonSerializable()
class Coordinates {
  final double latitude;
  final double longitude;

  Coordinates({required this.latitude, required this.longitude});

  Map<String, dynamic> toMap() => {
    'latitude': latitude,
    'longitude': longitude,
  };

  factory Coordinates.fromMap(Map<String, dynamic> map) => Coordinates(
    latitude: (map['latitude'] as num).toDouble(),
    longitude: (map['longitude'] as num).toDouble(),
  );
}
