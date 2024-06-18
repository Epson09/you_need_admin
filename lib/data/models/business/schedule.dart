// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/* class Schedule {
  final int id;
   String name;
  bool isOpen;
  String? start;
  String? end;
  Schedule({
    required this.id,
    required this.name,
    this.isOpen = false,
    this.start,
    this.end,
  });

  Schedule copyWith({
    int? id,
    String? name,
    bool? isOpen,
    String? start,
    String? end,
  }) {
    return Schedule(
      id: id ?? this.id,
      name: name ?? this.name,
      isOpen: isOpen ?? this.isOpen,
      start: start ?? this.start,
      end: end ?? this.end,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'day': name,
      'startTime': start,
      'endTime': end,
    };
  }

  factory Schedule.fromMap(Map<String, dynamic> map) {
    return Schedule(
      id: map['id'] as int,
      name: map['name'] as String,
      isOpen: map['isOpen'] as bool,
      start: map['start'] as String,
      end: map['stard'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Schedule.fromJson(String source) =>
      Schedule.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Schedule(id: $id, name: $name, isOpen: $isOpen, start: $start, end: $end)';
  }

  @override
  bool operator ==(covariant Schedule other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.isOpen == isOpen &&
        other.start == start &&
        other.end == end;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        isOpen.hashCode ^
        start.hashCode ^
        end.hashCode;
  }
}
 */
 final List<Schedule> demoschedules = [
  Schedule(id: 1, name: "Lundi"),
  Schedule(id: 2, name: "Mardi"),
  Schedule(id: 3, name: "Mercredi"),
  Schedule(id: 4, name: "Jeudi"),
  Schedule(id: 5, name: "Vendredi"),
  Schedule(id: 6, name: "Samedi"),
  Schedule(id: 7, name: "Dimanche")
]; 


/*
 "schedules": [
     {
       "day": "Mardi",
       "id": "0c38e6b3-791b-412c-bc24-cd40138cae76",
       "endTime": "7:51",
       "businessId": "3d4fa7b6-a52e-4c57-9d6a-c15b9999ff5e",
       "isActive": true,
       "startTime": "7:51",
       "updatedAt": "2024-06-04T06:52:15.664Z",
       "createdAt": "2024-06-04T06:52:15.664Z"
     },
     {
       "day": "Samedi",
       "id": "14ee27fc-f788-4192-9f79-16c259589866",
       "endTime": "7:51",
       "businessId": "3d4fa7b6-a52e-4c57-9d6a-c15b9999ff5e",
       "isActive": true,
       "startTime": "7:51",
       "updatedAt": "2024-06-04T06:52:15.665Z",
       "createdAt": "2024-06-04T06:52:15.665Z"
     },
     {
       "day": "Mercredi",
       "id": "40d60d00-211a-4667-b020-d046d0861ad5",
       "endTime": "7:51",
       "businessId": "3d4fa7b6-a52e-4c57-9d6a-c15b9999ff5e",
       "isActive": true,
       "startTime": "7:51",
       "updatedAt": "2024-06-04T06:52:15.664Z",
       "createdAt": "2024-06-04T06:52:15.664Z"
     },
     {
       "day": "Jeudi",
       "id": "63c5a6c3-44a5-45c2-bd28-12d80758ca39",
       "endTime": "7:51",
       "businessId": "3d4fa7b6-a52e-4c57-9d6a-c15b9999ff5e",
       "isActive": true,
       "startTime": "7:51",
       "updatedAt": "2024-06-04T06:52:15.664Z",
       "createdAt": "2024-06-04T06:52:15.664Z"
     },
     {
       "day": "Dimanche",
       "id": "d15a7de1-dd9d-4019-92fa-7883fc353e5f",
       "endTime": "7:51",
       "businessId": "3d4fa7b6-a52e-4c57-9d6a-c15b9999ff5e",
       "isActive": true,
       "startTime": "7:51",
       "updatedAt": "2024-06-04T06:52:15.665Z",
       "createdAt": "2024-06-04T06:52:15.665Z"
     },
     {
       "day": "Vendredi",
       "id": "fb48d2a8-9761-4f4f-a2df-ff07c8a26fdf",
       "endTime": "7:51",
       "businessId": "3d4fa7b6-a52e-4c57-9d6a-c15b9999ff5e",
       "isActive": true,
       "startTime": "7:51",
       "updatedAt": "2024-06-04T06:52:15.665Z",
       "createdAt": "2024-06-04T06:52:15.665Z"
     },
     {
       "day": "Lundi",
       "id": "fc66b023-ef51-45d2-9c08-d56b1b40f4bf",
       "endTime": "7:52",
       "businessId": "3d4fa7b6-a52e-4c57-9d6a-c15b9999ff5e",
       "isActive": true,
       "startTime": "7:52",
       "updatedAt": "2024-06-04T06:52:15.664Z",
       "createdAt": "2024-06-04T06:52:15.664Z"
     }
   ]




 */
class BusiSchedule {
  final String? id;
  bool isOpen;
  final String day;
  final String startTime;
  final String endTime;
  final String businessId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  BusiSchedule(
      {this.id,
      required this.day,
      required this.startTime,
      required this.endTime,
      required this.businessId,
      this.isOpen = false,
      this.createdAt,
      this.updatedAt});

  BusiSchedule copyWith({
    String? day,
    String? id,
    String? startTime,
    String? endTime,
    String? businessId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      BusiSchedule(
          day: day ?? this.day,
          startTime: startTime ?? this.startTime,
          endTime: endTime ?? this.endTime,
          businessId: businessId ?? this.businessId,
          createdAt: createdAt ?? this.createdAt,
          updatedAt: updatedAt ?? this.updatedAt,
          id: id ?? this.id);

  factory BusiSchedule.fromJson(String str) =>
      BusiSchedule.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BusiSchedule.fromMap(Map<String, dynamic> json) => BusiSchedule(
        id: json['id'] != null ? json['id'] as String : null,
        day: json["day"],
        startTime: json["startTime"],
        isOpen: json['isActive'],
        endTime: json["endTime"],
        businessId: json["businessId"],
        createdAt: json['createdAt'] != null
            ? DateTime.parse(json["createdAt"])
            : null,
        updatedAt: json['updatedAt'] != null
            ? DateTime.parse(json["updatedAt"])
            : null,
      );

  Map<String, dynamic> toMap() => {
        "day": day,
        "startTime": startTime,
        "endTime": endTime,
        "businessId": businessId,
      };
}

class WorkSechedule {
  final String id;
  final String day;
  final String startTime;
  final String endTime;
  final bool isActive;
  final String businessId;
  final DateTime createdAt;
  final DateTime updatedAt;

  WorkSechedule({
    required this.id,
    required this.day,
    required this.startTime,
    required this.endTime,
    required this.isActive,
    required this.businessId,
    required this.createdAt,
    required this.updatedAt,
  });

  WorkSechedule copyWith({
    String? id,
    String? day,
    String? startTime,
    String? endTime,
    bool? isActive,
    String? businessId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      WorkSechedule(
        id: id ?? this.id,
        day: day ?? this.day,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        isActive: isActive ?? this.isActive,
        businessId: businessId ?? this.businessId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory WorkSechedule.fromJson(String str) =>
      WorkSechedule.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WorkSechedule.fromMap(Map<String, dynamic> json) => WorkSechedule(
        id: json["id"] as String,
        day: json["day"] as String,
        startTime: json["startTime"] as String,
        endTime: json["endTime"] as String,
        isActive: json["isActive"] as bool,
        businessId: json["businessId"] as String,
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "day": day,
        "startTime": startTime,
        "endTime": endTime,
        "isActive": isActive,
        "businessId": businessId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}

class Schedule {
  final int id;
  final String name;
  bool isOpen;
  DateTime? start;
  DateTime? end;
  Schedule({
    required this.id,
    required this.name,
    this.isOpen = false,
    this.start,
    this.end,
  });

  Schedule copyWith({
    int? id,
    String? name,
    bool? isOpen,
    DateTime? start,
    DateTime? end,
  }) {
    return Schedule(
      id: id ?? this.id,
      name: name ?? this.name,
      isOpen: isOpen ?? this.isOpen,
      start: start ?? this.start,
      end: end ?? this.end,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'isOpen': isOpen,
      'start': start?.millisecondsSinceEpoch,
      'end': end?.millisecondsSinceEpoch,
    };
  }

  factory Schedule.fromMap(Map<String, dynamic> map) {
    return Schedule(
      id: map['id'] as int,
      name: map['name'] as String,
      isOpen: map['isOpen'] as bool,
      start: map['start'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['start'] as int)
          : null,
      end: map['end'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['end'] as int)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Schedule.fromJson(String source) =>
      Schedule.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Schedule(id: $id, name: $name, isOpen: $isOpen, start: $start, end: $end)';
  }

  @override
  bool operator ==(covariant Schedule other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.isOpen == isOpen &&
        other.start == start &&
        other.end == end;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        isOpen.hashCode ^
        start.hashCode ^
        end.hashCode;
  }
}
