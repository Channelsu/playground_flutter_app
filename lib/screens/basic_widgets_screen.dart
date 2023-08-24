import 'package:flutter/material.dart';
import 'package:playgroundflutterapp/components/widget_card.dart';

class BasicWidgetsScreen extends StatelessWidget {
  const BasicWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final widgetCards = [
      WidgetCard(
        widgetName: 'AppBar',
        imageName: 'app_bar',
        overview:
            'TabBarウィジェットやFlexibleSpaceBarウィジェットのような他のウィジェットを収容することもできるツールバーになります。',
      ),
      WidgetCard(
        widgetName: 'Column',
        imageName: 'column',
        overview: '子ウィジェットのリストを垂直方向に配置するウィジェットです。',
      ),
      WidgetCard(
        widgetName: 'Container',
        imageName: 'container',
        overview: 'カラーリングや配置、サイズ調整のウィジェットを兼ね備えた便利なウィジェットになります。',
      ),
      WidgetCard(
        widgetName: 'ElevatedButton',
        imageName: 'elevated_button',
        overview: 'マテリアルデザインの昇降ボタン。押されると上昇する塗りつぶされたボタンです。',
      ),
      WidgetCard(
        widgetName: 'FlutterLogo',
        imageName: 'flutter_logo',
        overview: 'ウィジェット形式のFlutterのロゴになります。このウィジェットはIconThemeを順守しています。',
      ),
      WidgetCard(
        widgetName: 'Icon',
        imageName: 'icon',
        overview: 'マテリアルデザインのアイコンを表示するウィジェットです。',
      ),
      WidgetCard(
        widgetName: 'Image',
        imageName: 'image',
        overview: '画像を表示するウィジェットです。',
      ),
      WidgetCard(
        widgetName: 'Placeholder',
        imageName: 'flutter_logo',
        overview: '今後ウィジェットが追加される場所を表すためのボックスを描くウィジェットです。',
      ),
      WidgetCard(
        widgetName: 'Row',
        imageName: 'row',
        overview: '子ウィジェットのリストを水平方向に配置するウィジェットです。',
      ),
      WidgetCard(
        widgetName: 'Scaffold',
        imageName: 'scaffold',
        overview:
            'マテリアルデザインの基本的なビジュアルレイアウト構造を実装します。このクラスは、ドロワー、スナックバー、ボトムシートを表示するためのAPIを提供します。',
      ),
      WidgetCard(
        widgetName: 'Text',
        imageName: 'text',
        overview: '一行での文章を表示するウィジェットです。',
      ),
    ];
    return Scaffold(
      body: GridView.count(
        padding: const EdgeInsets.all(8.0),
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 2 / 2.25, // Todo:ここでCardの高さ調整
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: [...widgetCards],
      ),
    );
  }
}
