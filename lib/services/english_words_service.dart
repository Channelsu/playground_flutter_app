import 'package:cloud_firestore/cloud_firestore.dart';

// firestoreと通信するクラス
class EnglishWordsService {
  // インスタンス作成
  final db = FirebaseFirestore.instance;

  Future<void> create(Map<String, dynamic> document) async {
    await db.collection('english-words').doc().set(document);
  }
}
