// アプリで使用する文言を定義するファイル（基本的に文字列のハードコードはしないように...）

enum ActionType {
  add('追加'), // enumを独自コンストラクタで初期化
  update('更新'),
  delete('削除');

  final String inJapanese; // enum値ごとにカスタム値を持てる

  const ActionType(this.inJapanese); // 独自コンストラクタが定義できる

  // dynamic toJson() => value; // フィールドメソッドを生やせる
}
