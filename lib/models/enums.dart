import 'package:json_annotation/json_annotation.dart';
enum AnimalType {
  cow('گاو'),
  sheep('گوسفند'),
  goat('بز'),
  camel('شتر'),
  horse('اسب'),
  poultry('طیور'),
  other('سایر');

  final String persianName;
  const AnimalType(this.persianName);
}


enum SellerType {
  individual('فردی'),
  company('شرکتی'),
  store('فروشگاه'),
  manufacturer('تولیدکننده');

  final String persianName;
  const SellerType(this.persianName);
}

enum VerificationStatus {
  pending('در انتظار تأیید'),
  verified('تأیید شده'),
  rejected('رد شده'),
  suspended('تعلیق شده');

  final String persianName;
  const VerificationStatus(this.persianName);
}
enum MembershipLevel {
  regular('معمولی'),
  silver('نقره‌ای'),
  gold('طلایی'),
  platinum('پلاتینیوم');

  final String persianName;
  const MembershipLevel(this.persianName);
}
enum HealthStatus {
  excellent('عالی'),
  good('خوب'),
  average('متوسط'),
  recovering('در حال بهبودی'),
  underTreatment('تحت درمان'),
  critical('بحرانی'),
  unknown('نامشخص');

  final String persianName;
  const HealthStatus(this.persianName);
}

enum ReproductionStatus {
  pregnant('باردار'),
  readyForPregnancy('آماده باروری'),
  recentlyGaveBirth('تازه زایمان کرده'),
  notReady('آماده نیست'),
  infertile('نابارور'),
  unknown('نامشخص');

  final String persianName;
  const ReproductionStatus(this.persianName);
}


/*enum AnimalType {
  cow, // گاو
  sheep, // گوسفند
  goat, // بز
  buffalo, // گاومیش
  camel, // شتر
  horse, // اسب
  donkey, // الاغ
  poultry, // طیور
  fish, // ماهی
  other, // سایر
}*/

// جنسیت
enum Gender {
  male('مرد'),
  female('زن'),
  other('سایر');
  final String persianName;
  const Gender(this.persianName);
}


/*
// وضعیت سلامت
enum HealthStatus {
  healthy, // سالم
  sick, // بیمار
  injured, // مجروح
  quarantined, // قرنطینه
  dead, // تلف شده
  sold, // فروخته شده
}

// وضعیت تولید مثل
enum ReproductionStatus {
  notPregnant, // غیر آبستن
  pregnant, // آبستن
  inHeat, // فحل
  nursing, // شیرده
  dry, // خشک
}*/

enum ReproductionType {
  artificialInsemination, // تلقیح مصنوعی
  naturalMating, // جفت‌گیری طبیعی
  pregnancyCheck, // بررسی آبستنی
  birth, // زایش
  abortion, // سقط
}

enum TransactionType {
  purchase, // خرید
  sale, // فروش
  exchange, // معاوضه
  gift, // هدیه
  inheritance, // ارث
}

enum EventType {
  vaccination,
  treatment,
  feeding,
  milking,
  weighing,
  mating,
  birth,
  move,
  checkup,
  other,
}

/// وضعیت پرداخت فاکتور
enum PaymentStatus { unpaid, partial, paid }

@JsonEnum(valueField: 'code')
enum StatusCodeEnhanced {
  success(200),
  movedPermanently(301),
  found(302),
  internalServerError(500);

  const StatusCodeEnhanced(this.code);

  final int code;
}

/// وضعیت تحویل
enum DeliveryStatus { pending, shipped, delivered }

enum UserRank {
  accountant,
  support,
  analyst,
  developer,
  assistant,
  user,
  viewer,
}

class UserRankHelper {
  static const Map<UserRank, int> _codes = <UserRank, int>{
    UserRank.accountant: 1,
    UserRank.support: 2,
    UserRank.analyst: 3,
    UserRank.developer: 4,
    UserRank.assistant: 5,
    UserRank.user: 6,
    UserRank.viewer: 7,
  };

  static const Map<UserRank, String> _persianNames = <UserRank, String>{
    UserRank.accountant: 'حسابدار',
    UserRank.support: 'پشتیبان',
    UserRank.analyst: 'تحلیلگر',
    UserRank.developer: 'توسعه‌دهنده',
    UserRank.assistant: 'دستیار',
    UserRank.user: 'کاربر',
    UserRank.viewer: 'کاربر',
  };

  static int getCode(UserRank rank) => _codes[rank] ?? 0;

  static String getPersianName(UserRank rank) => _persianNames[rank] ?? '';

  static UserRank fromCode(int code) {
    return _codes.entries
        .firstWhere(
          (MapEntry<UserRank, int> entry) => entry.value == code,
          orElse: () => const MapEntry<UserRank, int>(UserRank.user, 6),
        )
        .key;
  }
}
