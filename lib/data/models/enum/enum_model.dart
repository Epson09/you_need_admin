enum OperrationStatus {
  failed,

  succes,
  inkwnown,

  pending;

  factory OperrationStatus.fromString(String accountType) {
    switch (accountType) {
      case "FAILED":
        return OperrationStatus.failed;
      case "SUCCESSFUL":
        return OperrationStatus.succes;
      case "PENDING":
        return OperrationStatus.pending;

      default:
        return OperrationStatus.inkwnown;
    }
  }

  String toNetworkString() {
    switch (this) {
      case OperrationStatus.failed:
        return 'FAILED';
      case OperrationStatus.pending:
        return "PENDING";
      case OperrationStatus.succes:
        return "SUCCESSFUL";
      default:
        return "is_unknown";
    }
  }

  @override
  String toString() {
    switch (this) {
      case OperrationStatus.failed:
        return "Echoué";
      case OperrationStatus.pending:
        return "En Attente";
      case OperrationStatus.succes:
        return "Succès";

      default:
        return "Inconnu";
    }
  }
}

enum ToastType { basic, error, success }

enum BusinessStatus {
  failed,

  succes,
  inkwnown,

  pending;

  factory BusinessStatus.fromString(String accountType) {
    switch (accountType) {
      case "failed":
        return BusinessStatus.failed;
      case "succeeded":
        return BusinessStatus.succes;
      case "pending":
        return BusinessStatus.pending;

      default:
        return BusinessStatus.inkwnown;
    }
  }

  String toNetworkString() {
    switch (this) {
      case BusinessStatus.failed:
        return 'failed';
      case BusinessStatus.pending:
        return "pending";
      case BusinessStatus.succes:
        return "succeeded";
      default:
        return "unknown";
    }
  }

  @override
  String toString() {
    switch (this) {
      case BusinessStatus.failed:
        return "Echoué";
      case BusinessStatus.pending:
        return "En cours";
      case BusinessStatus.succes:
        return "Succès";

      default:
        return "Inconnu";
    }
  }
}

enum WalletType {
  personal,

  business;

  factory WalletType.fromString(String accountType) {
    switch (accountType) {
      case "personal":
        return WalletType.personal;

      case "business":
        return WalletType.business;

      default:
        return WalletType.personal;
    }
  }

  String toNetworkString() {
    switch (this) {
      case WalletType.personal:
        return 'personal';
      case WalletType.business:
        return "business";

      default:
        return "personal";
    }
  }

  @override
  String toString() {
    switch (this) {
      case WalletType.personal:
        return "Personnel";
      case WalletType.business:
        return "Business";

      default:
        return "Personnel";
    }
  }
}

enum MessageType {
  audio,

  video,
  text,

  image;

  factory MessageType.fromString(String accountType) {
    switch (accountType) {
      case "audio":
        return MessageType.audio;
      case "video":
        return MessageType.video;
      case "image":
        return MessageType.image;

      default:
        return MessageType.text;
    }
  }

  String toNetworkString() {
    switch (this) {
      case MessageType.audio:
        return 'audio';
      case MessageType.image:
        return "image";
      case MessageType.video:
        return "video";
      default:
        return "text";
    }
  }

  @override
  String toString() {
    switch (this) {
      case MessageType.audio:
        return "Audio";
      case MessageType.image:
        return "Image";
      case MessageType.video:
        return "Vidéo";

      default:
        return "Text";
    }
  }
}

enum OperrationType {
  deposit,

  transfert;

  factory OperrationType.fromString(String accountType) {
    switch (accountType) {
      case "deposit":
        return OperrationType.deposit;
      case "transfert":
        return OperrationType.transfert;

      default:
        return OperrationType.deposit;
    }
  }

  String toNetworkString() {
    switch (this) {
      case OperrationType.deposit:
        return 'deposit';
      case OperrationType.transfert:
        return "transfert";
      default:
        return "deposit";
    }
  }

  @override
  String toString() {
    switch (this) {
      case OperrationType.deposit:
        return "Dépot";
      case OperrationType.transfert:
        return "Transfert";

      default:
        return "Inconnu";
    }
  }
}

enum TransationStatut {
  pending,
  failed,
  success,
  successful,
  declined,
  approved,
  completed,
  transferred,
  canceled,
  inconnu,

  refunded;

  factory TransationStatut.fromMap(String map) {
    if (map == 'pending') {
      return TransationStatut.pending;
    } else if (map == 'FAILED') {
      return TransationStatut.failed;
    } else if (map == 'SUCCESSFUL') {
      return TransationStatut.successful;
    } else if (map == 'SUCCESS') {
      return TransationStatut.success;
    } else if (map == 'refunded') {
      return TransationStatut.refunded;
    } else if (map == 'approved') {
      return TransationStatut.approved;
    } else if (map == 'completed') {
      return TransationStatut.completed;
    } else if (map == 'declined') {
      return TransationStatut.declined;
    } else if (map == 'canceled') {
      return TransationStatut.canceled;
    } else if (map == 'transferred') {
      return TransationStatut.transferred;
    } else if (map == 'declined') {
      return TransationStatut.declined;
    } else if (map == 'inconnu') {
      return TransationStatut.inconnu;
    } else {
      return TransationStatut.inconnu;
    }
  }

  String toNetworkString() {
    switch (this) {
      case TransationStatut.pending:
        return 'pending';
      case TransationStatut.successful:
        return 'delivery';
      case TransationStatut.refunded:
        return "plane";
      case TransationStatut.failed:
        return "bus";
      case TransationStatut.success:
        return "personalCard";

      default:
        return "taxi";
    }
  }

  @override
  String toString() {
    switch (this) {
      case TransationStatut.pending:
        return 'En attente';
      case TransationStatut.canceled:
        return 'Annulée';
      case TransationStatut.successful:
        return 'Succès';
      case TransationStatut.refunded:
        return "Remboursée";
      case TransationStatut.failed:
        return "Echoué";
      case TransationStatut.success:
        return "Succès";

      case TransationStatut.approved:
        return 'Approuvée';
      case TransationStatut.completed:
        return "Approuvée";
      case TransationStatut.declined:
        return "Déclinée";
      case TransationStatut.transferred:
        return "Transférée";
      default:
        return "Inconnu";
    }
  }
}

enum BoostageStatut {
  pending,
  failed,
  success,
  successful,
  declined,
  approved,
  completed,
  transferred,
  canceled,
  inconnu,

  refunded;

  factory BoostageStatut.fromMap(String map) {
    if (map == 'pending') {
      return BoostageStatut.pending;
    } else if (map == 'FAILED') {
      return BoostageStatut.failed;
    } else if (map == 'SUCCESSFUL') {
      return BoostageStatut.successful;
    } else if (map == 'SUCCESS') {
      return BoostageStatut.success;
    } else if (map == 'refunded') {
      return BoostageStatut.refunded;
    } else if (map == 'approved') {
      return BoostageStatut.approved;
    } else if (map == 'completed') {
      return BoostageStatut.completed;
    } else if (map == 'declined') {
      return BoostageStatut.declined;
    } else if (map == 'canceled') {
      return BoostageStatut.canceled;
    } else if (map == 'transferred') {
      return BoostageStatut.transferred;
    } else if (map == 'declined') {
      return BoostageStatut.declined;
    } else if (map == 'inconnu') {
      return BoostageStatut.inconnu;
    } else {
      return BoostageStatut.inconnu;
    }
  }

  String toNetworkString() {
    switch (this) {
      case BoostageStatut.pending:
        return 'pending';
      case BoostageStatut.successful:
        return 'delivery';
      case BoostageStatut.refunded:
        return "plane";
      case BoostageStatut.failed:
        return "bus";
      case BoostageStatut.success:
        return "personalCard";

      default:
        return "taxi";
    }
  }

  @override
  String toString() {
    switch (this) {
      case BoostageStatut.pending:
        return 'En attente';
      case BoostageStatut.canceled:
        return 'Annulée';
      case BoostageStatut.successful:
        return 'Succès';
      case BoostageStatut.refunded:
        return "Remboursée";
      case BoostageStatut.failed:
        return "Echoué";
      case BoostageStatut.success:
        return "Succès";

      case BoostageStatut.approved:
        return 'Approuvée';
      case BoostageStatut.completed:
        return "Approuvée";
      case BoostageStatut.declined:
        return "Déclinée";
      case BoostageStatut.transferred:
        return "Transférée";
      default:
        return "Inconnu";
    }
  }
}

enum Currency {
  xof,
  eur,
  gbp,
  usd;

  factory Currency.fromMap(String map) {
    if (map == 'XOF') {
      return Currency.xof;
    } else if (map == 'EUR') {
      return Currency.eur;
    } else if (map == 'GBP') {
      return Currency.gbp;
    } else if (map == 'USD') {
      return Currency.usd;
    } else {
      return Currency.xof;
    }
  }

  @override
  String toString() {
    switch (this) {
      case Currency.xof:
        return 'XOF';
      case Currency.usd:
        return "USD";
      case Currency.eur:
        return "EUR";
      case Currency.gbp:
        return "GBP";

      default:
        return "XOF";
    }
  }
}

final List<BoostageStatut> demoBoostageStatuts = [
  BoostageStatut.approved,
  BoostageStatut.canceled,
  BoostageStatut.completed,
  BoostageStatut.declined,
  BoostageStatut.failed,
  BoostageStatut.inconnu,
  BoostageStatut.pending,
  BoostageStatut.refunded,
  BoostageStatut.success,
  BoostageStatut.successful,
];

final List<Currency> demoCurrencies = [
  Currency.xof,
  Currency.usd,
  Currency.eur,
  Currency.gbp,
];

enum SponsoringPlanType {
  basic,

  platinium;

  factory SponsoringPlanType.fromString(String accountType) {
    switch (accountType) {
      case "basic":
        return SponsoringPlanType.basic;

      case "platinium":
        return SponsoringPlanType.platinium;

      default:
        return SponsoringPlanType.basic;
    }
  }

  String toNetworkString() {
    switch (this) {
      case SponsoringPlanType.basic:
        return 'basic';
      case SponsoringPlanType.platinium:
        return "platinium";

      default:
        return "Basic";
    }
  }

  @override
  String toString() {
    switch (this) {
      case SponsoringPlanType.basic:
        return "Basic";
      case SponsoringPlanType.platinium:
        return "Platinium";

      default:
        return "Basic";
    }
  }
}

enum Civility {
  male,
  female;

  String toNetworkString() {
    switch (this) {
      case Civility.male:
        return 'm';
      case Civility.female:
        return "f";
      default:
        return "m";
    }
  }

  factory Civility.fromMap(String map) {
    if (map == 'm') {
      return Civility.male;
    } else {
      return Civility.female;
    }
  }

  @override
  String toString() {
    switch (this) {
      case Civility.male:
        return 'Masculin';
      case Civility.female:
        return "Féminin";
      default:
        return "Masculin";
    }
  }
}

final List<Civility> demoCivility = [
  Civility.male,
  Civility.female,
];
