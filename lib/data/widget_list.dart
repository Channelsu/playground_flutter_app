import 'package:playgroundflutterapp/model/wgt.dart';

List<Wgt> widgetList = [
  Wgt(
    id: '1',
    name: 'AppBar',
    overview:
        'TabBarウィジェットやFlexibleSpaceBarウィジェットのような他のウィジェットを収容することもできるツールバーになります。',
    imagePath: 'assets/widget_images/app_bar.png',
    detail:
        'AppBarはツールバーと、TabBarやFlexibleSpaceBarなどの他のウィジェットで構成されます。AppBarは通常、1つまたは複数の一般的なアクションをIconButtonsで公開し、オプションであまり一般的でない操作のためのPopupMenuButtonが続きます（「オーバーフローメニュー」と呼ばれることもあります）。\n\nAppBarは通常Scaffold.appBarプロパティで使用され、AppBarを画面上部に固定高さのウィジェットとして配置します。スクロール可能なアプリバーについては、CustomScrollViewで使用するためにスライバにAppBarを埋め込むSliverAppBarを参照してください。AppBarは、ツールバーウィジェット、先頭、タイトル、およびアクションを（もしあれば）下部の上に表示します。下部は通常TabBarに使用されます。flexibleSpaceウィジェットが指定された場合は、ツールバーと一番下のウィジェットの後ろにスタックされます。次の図は、記述言語が左から右（例：英語）である場合に、これらのスロットがツールバーのどこに表示されるかを示しています：AppBarは、システムのUIに干渉しないように、周囲のMediaQueryのパディングに基づいてコンテンツを挿入します。Scaffold.appBarプロパティで使用すると、Scaffoldによって処理されます。AppBarをアニメーションさせる場合、予期しないMediaQueryの変更（Heroアニメーションでよくある）によってコンテンツが突然ジャンプすることがあります。AppBarをMediaQueryウィジェットでラップし、アニメーションが滑らかになるようにパディングを調整します。',
  ),
  Wgt(
    id: '2',
    name: 'Column',
    overview: '子ウィジェットのリストを垂直方向に配置するウィジェットです。',
    imagePath: 'assets/widget_images/column.png',
    detail: '''''',
  ),
  Wgt(
    id: '3',
    name: 'Container',
    overview: 'カラーリングや配置、サイズ調整のウィジェットを兼ね備えた便利なウィジェットになります。',
    imagePath: 'assets/widget_images/container.png',
    detail: '''''',
  ),
  Wgt(
    id: '4',
    name: 'ElevatedButton',
    overview: 'マテリアルデザインの昇降ボタン。押されると上昇する塗りつぶされたボタンです。',
    imagePath: 'assets/widget_images/elevated_button.png',
    detail: '''''',
  ),
  Wgt(
    id: '5',
    name: 'FlutterLogo',
    overview: 'ウィジェット形式のFlutterのロゴになります。このウィジェットはIconThemeを順守しています。',
    imagePath: 'assets/widget_images/flutter_logo.png',
    detail: '''''',
  ),
  Wgt(
    id: '6',
    name: 'Icon',
    overview: 'マテリアルデザインのアイコンを表示するウィジェットです。',
    imagePath: 'assets/widget_images/icon.png',
    detail: '''''',
  ),
  Wgt(
    id: '7',
    name: 'Image',
    overview: '画像を表示するウィジェットです。',
    imagePath: 'assets/widget_images/image.png',
    detail: '''''',
  ),
  Wgt(
    id: '8',
    name: 'Placeholder',
    overview: '今後ウィジェットが追加される場所を表すためのボックスを描くウィジェットです。',
    imagePath: 'assets/widget_images/flutter_logo.png',
    detail: '''''',
  ),
  Wgt(
    id: '9',
    name: 'Row',
    overview: '子ウィジェットのリストを水平方向に配置するウィジェットです。',
    imagePath: 'assets/widget_images/row.png',
    detail: '''''',
  ),
  Wgt(
    id: '10',
    name: 'Scaffold',
    overview:
        'マテリアルデザインの基本的なビジュアルレイアウト構造を実装します。このクラスは、ドロワー、スナックバー、ボトムシートを表示するためのAPIを提供します。',
    imagePath: 'assets/widget_images/scaffold.png',
    detail: '''''',
  ),
  Wgt(
    id: '11',
    name: 'Text',
    overview: '一行での文章を表示するウィジェットです。',
    imagePath: 'assets/widget_images/text.png',
    detail: '''''',
  ),
];
