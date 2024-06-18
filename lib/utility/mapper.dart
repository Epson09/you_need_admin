import 'package:admin_you_need/common/constants.dart';
import 'package:flutter/material.dart';


import 'formatter.dart';

class Mapper {
  static String depositStatusToFr(String status) {
    var formatted = 'inconnu';

    switch (status) {
      case "pending":
        formatted = "en attente";
        break;
      case "canceled":
        formatted = "annulé";
        break;
      case "completed":
        formatted = "terminé";
        break;
      default:
    }

    return formatted;
  }

  static String orderStatusToFr(String status) {
    var formatted = 'inconnu';

    switch (status) {
      case "pending":
        formatted = "en attente";
        break;
      case "canceled":
        formatted = "annulée";
        break;
      case "completed":
        formatted = "terminée";
        break;
      case "picked":
        formatted = "en livraison";
        break;
      default:
    }

    return formatted;
  }

  static String transfertTypeToFr(bool isSender) {
    var formatted = 'inconnu';

    if (isSender) {
      formatted = "envoyé";
    } else {
      formatted = "reçu";
    }

    return formatted;
  }

  static Color transfertTypeToColor(bool isSender) {
    Color formatted = Colors.grey;

    if (isSender) {
      formatted = kYellow;
    } else {
      formatted = kAppbarColor;
    }

    return formatted;
  }

  static Color depositStatusToColor(String status) {
    Color formatted = Colors.grey;

    switch (status) {
      case "pending":
        formatted = kYellow;
        break;
      case "canceled":
        formatted = Colors.red;
        break;
      case "completed":
        formatted = kAppbarColor;
        break;
      default:
    }

    return formatted;
  }

  static Color orderStatusToColor(String status) {
    Color formatted = Colors.grey;

    switch (status) {
      case "picked":
        formatted = kYellow;
        break;
      case "canceled":
        formatted = Colors.red;
        break;
      case "completed":
        formatted = kAppbarColor;
        break;
      default:
    }

    return formatted;
  }

  static String transactionActionToName(String status) {
    String formatted = "";

    switch (status) {
      case "deposit":
        formatted = "Dépôt";
        break;
      case "boost":
        formatted = "Boostage";
        break;
      case "subscription":
        formatted = "Abonnement";
        break;
      case "order":
        formatted = "Commande";
        break;
      case "withdrawal":
        formatted = "Retrait";
        break;
      case "transfert":
        formatted = "Transfert";
        break;
      default:
    }

    return formatted;
  }

  static Color transactionTypeToColor(String type) {
    Color formatted = Colors.grey;

    switch (type) {
      case "debit":
        formatted = Colors.red;
        break;
      case "credit":
        formatted = kAppbarColor;
        break;
      default:
    }

    return formatted;
  }

  static Color mapSubscriptionDaysToColor(int expires) {
    Duration diff = Fmt.dateDiffFromMilli(expires);

    Color formatted = Colors.grey;

    if (!diff.isNegative) {
      formatted = kAppbarColor;
    } else {
      formatted = Colors.red;
    }

    return formatted;
  }
}
