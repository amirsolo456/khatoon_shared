// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankInfo _$BankInfoFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['bank_name', 'account_number', 'sheba_number'],
  );
  return BankInfo(
    bankName: json['bank_name'] as String,
    accountNumber: json['account_number'] as String,
    shebaNumber: json['sheba_number'] as String,
    cardNumber: json['card_number'] as String?,
  );
}

Map<String, dynamic> _$BankInfoToJson(BankInfo instance) => <String, dynamic>{
  'bank_name': instance.bankName,
  'account_number': instance.accountNumber,
  'sheba_number': instance.shebaNumber,
  'card_number': instance.cardNumber,
};
