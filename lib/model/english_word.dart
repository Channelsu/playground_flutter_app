import 'package:cloud_firestore/cloud_firestore.dart';

class EnglishWord {
  String id;
  final String title;
  final String japanese;
  Timestamp createdAt;

  EnglishWord({
    this.id = '',
    required this.title,
    required this.japanese,
    required this.createdAt,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'japanese': japanese,
        'createdAt': createdAt,
      };

  static EnglishWord fromJson(Map<String, dynamic> json) {
    return EnglishWord(
      id: json['id'],
      title: json['title'],
      japanese: json['japanese'],
      createdAt: json['createdAt'] as Timestamp,
    );
  }
}
