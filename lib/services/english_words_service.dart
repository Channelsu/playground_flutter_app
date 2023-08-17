import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:playgroundflutterapp/model/english_word.dart';

// firestoreと通信するクラス
class EnglishWordsService {
  // インスタンス作成
  final db = FirebaseFirestore.instance;

  Future<void> create(EnglishWord englishWord) async {
    // await db.collection('english-words').doc().set(document);
    // ドキュメントのリファレンス（idは自動付与）
    final docEnglishWord = db.collection('english-words').doc();
    // 自動付与されたidを設置
    englishWord.id = docEnglishWord.id;
    // jsonに変換
    final json = englishWord.toJson();
    // firestoreに登録
    await docEnglishWord.set(json);
  }

  Stream<List<Map<String, dynamic>>> getEnglishWords() {
    return db
        .collection('english-words')
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
  }

  Future delete(String id) async {
    await db.collection('english-words').doc(id).delete();
  }
}
