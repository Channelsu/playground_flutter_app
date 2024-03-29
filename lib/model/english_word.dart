import 'package:cloud_firestore/cloud_firestore.dart';

class EnglishWord {
  String id;
  final String title;
  final String japanese;
  Timestamp? createdAt;
  Timestamp updatedAt;

  EnglishWord({
    this.id = '',
    required this.title,
    required this.japanese,
    this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'japanese': japanese,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };

  static EnglishWord fromJson(Map<String, dynamic> json) {
    return EnglishWord(
      id: json['id'],
      title: json['title'],
      japanese: json['japanese'],
      createdAt: json['createdAt'] as Timestamp,
      updatedAt: json['updatedAt'] as Timestamp,
    );
  }
}
