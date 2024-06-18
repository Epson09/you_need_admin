
import 'package:flutter/material.dart';

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import 'package:url_launcher/url_launcher.dart';



class Fmt {
 
  static String apiVideoMp4(String videoId) {
    return "https://vod.api.video/vod/$videoId/mp4/source.mp4";
  }

/*
  static int calculateDiscount(List<OrderItem>? items) {
    var disc = 0;

    if (items != null) {
      for (var item in items) {
        disc += item.discount;
      }
    }

    return disc;
  }
*/
  static String formatTags(List tags) {
    String fm = "";
    for (var element in tags) {
      fm += "#$element ";
    }

    return fm.trim();
  }

  static String s(int val) {
    if (val > 1) {
      return 's';
    }

    return "";
  }

/*
  static Location toLocation(LatLng latLng) {
    return Location(lat: latLng.latitude, lng: latLng.longitude);
  }
*/
  static List<String> formatListDynamicToListString(List tags) {
    List<String> fm = [];
    for (var element in tags) {
      fm.add(element.toString());
    }

    return fm;
  }

  static List<int> formatListDynamicToListInt(List list,
      [bool sanitize = false]) {
    List<int> fm = [];
    for (var element in list) {
      if (sanitize && element != null) {
        fm.add(int.parse(element.toString()));
      }

      if (!sanitize) {
        fm.add(int.parse(element.toString()));
      }
    }

    return fm;
  }

  static String formatDate(String date, {String delimitter = "|"}) {
    Intl.defaultLocale = 'fr_FR';
    initializeDateFormatting('fr_FR', null);

    DateTime dateTime = DateTime.parse(date);

    if (dateTime.isUtc) {
      dateTime = dateTime.add(const Duration(hours: 1));
    }

    var formatted =
        "${dateTime.toString().split(" ")[1].substring(0, 5)} $delimitter ${DateFormat.yMMMEd().format(
      dateTime,
    )}";

    return formatted;
  }

  static String formatDateFromMilli(int dateInMilli,
      [String delimitter = "à"]) {
    Intl.defaultLocale = 'fr_FR';
    initializeDateFormatting('fr_FR', null);

    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(dateInMilli);

    if (dateTime.isUtc) {
      dateTime = dateTime.add(const Duration(hours: 1));
    }

    var formatted = "${DateFormat.yMMMEd().format(
      dateTime,
    )} $delimitter ${dateTime.toString().split(" ")[1].substring(0, 5)}";

    return (formatted);
  }

  static String extractTimeFromMilli(int dateInMilli, {bool simple = false}) {
    Intl.defaultLocale = 'fr_FR';
    initializeDateFormatting('fr_FR', null);

    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(dateInMilli);

    if (dateTime.isUtc) {
      dateTime = dateTime.add(const Duration(hours: 1));
    }

    var time = dateTime.toString().split(" ")[1].substring(0, 5);
    var data = time.split(":");

    var formatted = "";

    if (simple) {
      formatted = "${data[0]}:${data[1]}";
    } else {
      formatted = "${data[0]}h ${data[1]}min";
    }

    return formatted;
  }

  static String extractDateFromMilli(int dateInMilli, {bool days = true}) {
    Intl.defaultLocale = 'fr_FR';
    initializeDateFormatting('fr_FR', null);

    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(dateInMilli);

    if (dateTime.isUtc) {
      dateTime = dateTime.add(const Duration(hours: 1));
    }

    var formatted = "";

    if (days) {
      formatted = capitalize(DateFormat.yMMMEd().format(dateTime));
    } else {
      formatted = capitalize(DateFormat.yMd().format(dateTime));
    }

    return formatted;
  }

  static String capitalize(String string) {
    Intl.defaultLocale = 'fr_FR';
    initializeDateFormatting('fr_FR', null);

    var formatted = toBeginningOfSentenceCase(string);

    return formatted;
  }

  static DateParts extractDatePartsFromMilli(int dateInMilli) {
    Intl.defaultLocale = 'fr_FR';
    initializeDateFormatting('fr_FR', null);

    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(dateInMilli);

    if (dateTime.isUtc) {
      dateTime = dateTime.add(const Duration(hours: 1));
    }

    var formatted = DateFormat.yMMMd().format(dateTime).split(" ");

    return DateParts(
      day: formatted[0],
      month: formatted[1],
      year: formatted[2],
    );
  }

  static String fotmatDateFromMilliSimple(int dateInMilli) {
    Intl.defaultLocale = 'fr_FR';
    initializeDateFormatting('fr_FR', null);

    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(dateInMilli);

    if (dateTime.isUtc) {
      dateTime = dateTime.add(const Duration(hours: 1));
    }

    var formatted = "${DateFormat.yMd().format(
      dateTime,
    )} ${dateTime.toString().split(" ")[1].substring(0, 5)}";

    return formatted;
  }

  static String formatTransactionAmount(String type, int amount) {
    String formatted = "";

    switch (type) {
      case "debit":
        formatted = "- $amount";
        break;
      case "credit":
        formatted = "+ $amount";
        break;
      default:
    }

    return formatted;
  }

  static Duration dateDiffFromMilli(int expires) {
    DateTime now = DateTime.now();
    DateTime expireDateTime = DateTime.fromMillisecondsSinceEpoch(expires);

    if (now.isUtc) {
      now = now.add(const Duration(hours: 1));
    }

    if (expireDateTime.isUtc) {
      expireDateTime = expireDateTime.add(const Duration(hours: 1));
    }

    Duration formatted = expireDateTime.difference(now);

    return formatted;
  }

  static String dateDiffToNow(int date) {
    DateTime now = DateTime.now();

    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(date);

    if (now.isUtc) {
      now = now.add(const Duration(hours: 1));
    }

    if (dateTime.isUtc) {
      dateTime = dateTime.add(const Duration(hours: 1));
    }

    // LocalDate a = LocalDate.dateTime(now);
    // LocalDate b = LocalDate.dateTime(dateTime);

    // Period diff = a.periodSince(b);

    Duration dif = now.difference(dateTime);

    var fmt = "";

    if (dif.inDays > 0) {
      if (dif.inDays >= 30) {
        fmt = "${dif.inDays ~/ 30} mois";
      } else if (dif.inDays >= 365) {
        fmt = "${dif.inDays ~/ 365} an${s(dif.inDays ~/ 365)}";
      } else {
        fmt = "${dif.inDays} jr${s(dif.inDays)}";
      }
    } else if (dif.inHours > 0) {
      fmt = "${dif.inHours} h";
    } else if (dif.inMinutes > 0) {
      fmt = "${dif.inMinutes} min";
    } else if (dif.inSeconds > 30) {
      fmt = "${dif.inSeconds} sec${s(dif.inSeconds)}";
    } else {
      fmt = "A l'instant";
    }

    return fmt;
  }

  static String formatSubscriptionDays(int expires, int duration) {
    Duration diff = dateDiffFromMilli(expires);
    int diffInDays = diff.inDays;

    String formatted = "";

    if (!diff.isNegative) {
      if (diffInDays == 0) {
        if (diff.inHours == 0) {
          formatted =
              "${diff.inMinutes} mins rest. / $duration jr${duration > 1 ? "s" : ""}";
        } else {
          formatted =
              "${diff.inHours} hrs rest. / $duration jr${duration > 1 ? "s" : ""}";
        }
      } else {
        formatted =
            "$diffInDays jrs rest. / $duration jr${duration > 1 ? "s" : ""}";
      }
    } else {
      formatted =
          "Expiré depuis ${-1 * diffInDays} jr${(-1 * diffInDays) > 1 ? "s" : ""}";
    }

    return formatted;
  }

  static String extractBasePhoneNumber(
      String fullPhoneNumber, int countryPhoneCode) {
    int index = countryPhoneCode.toString().length + 1;

    return fullPhoneNumber.substring(index);
  }
 static Color convertHexToColor(String hexCode) {
  return Color(int.parse(hexCode.substring(1, 7), radix: 16) + 0xFF000000);
}

 static String maskPhoneNumber(String phoneNumber) {
  // Vérifie si le numéro de téléphone a au moins 8 caractères (6 pour le préfixe et 2 pour le suffixe)
  if (phoneNumber.length >= 8) {
    // Récupère le préfixe (les six premiers caractères) et le suffixe (les deux derniers caractères)
    var prefix = phoneNumber.substring(0, 6);
    var suffix = phoneNumber.substring(phoneNumber.length - 2);
    // Récupère la partie du milieu du numéro de téléphone (les chiffres à masquer)
    var middlePart = phoneNumber.substring(6, phoneNumber.length - 2);
    // Remplace les chiffres du milieu par des "*"
    var maskedPart = middlePart.replaceAll(RegExp(r'\d'), '*');
    // Concatène les parties du numéro de téléphone avec les parties masquées
    return '$prefix$maskedPart$suffix';
  } else {
    // Retourne le numéro de téléphone inchangé s'il ne contient pas assez de caractères
    return phoneNumber;
  }
}

  static Map<String, dynamic> jsonStringToMap(String data) {
    List<String> str = data
        .replaceAll("{", "")
        .replaceAll("}", "")
        .replaceAll("\"", "")
        .replaceAll("'", "")
        .split(",");
    Map<String, dynamic> result = {};
    for (int i = 0; i < str.length; i++) {
      List<String> s = str[i].split(":");
      result.putIfAbsent(s[0].trim(), () => s[1].trim());
    }
    return result;
  }

  static String formatListStringToString(List list) {
    var formatted = "";

    for (var message in list) {
      formatted += message.toString();
    }

    return formatted;
  }

  static Future<void> goToMail(String email) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    // ignore: deprecated_member_use
    if (await canLaunch(emailLaunchUri.toString())) {
      // ignore: deprecated_member_use
      await launch(emailLaunchUri.toString());
    } else {
      throw 'Impossible d\'ouvrir l\'e-mail.';
    }
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class DateParts {
  final String year;
  final String month;
  final String day;

  DateParts({required this.year, required this.month, required this.day});
}
