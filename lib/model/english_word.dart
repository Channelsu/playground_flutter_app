class EnglishWord {
  String id;
  final String title;
  final String japanese;

  EnglishWord({
    this.id = '',
    required this.title,
    required this.japanese,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'japanese': japanese,
      };

  static EnglishWord fromJson(Map<String, dynamic> json) => EnglishWord(
        id: json['id'],
        title: json['title'],
        japanese: json['japanese'],
      );
}
