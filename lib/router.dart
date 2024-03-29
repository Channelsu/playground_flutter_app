import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playgroundflutterapp/model/english_word.dart';
import 'package:playgroundflutterapp/model/wgt.dart';
import 'package:playgroundflutterapp/screens/english_words_screens/english_words_detail_screen.dart';
import 'package:playgroundflutterapp/screens/english_words_screens/english_words_screen.dart';
import 'package:playgroundflutterapp/screens/widget_detail_screen.dart';

import 'main.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'initial',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const MyHomePage(),
        );
      },
    ),
    // ウィジェット詳細ページ
    GoRoute(
      path: '/widget-detail',
      name: 'widgetDetail',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: WidgetDetailScreen(wgt: state.extra as Wgt),
        );
      },
    ),
    // 英単語ページ
    GoRoute(
      path: '/english-words',
      name: 'englishWords',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const EnglishWordsScreen(),
        );
      },
    ),
    // 英単語詳細ページ
    GoRoute(
      path: '/english-words-detail',
      name: 'englishWordsDetail',
      pageBuilder: (context, state) {
        EnglishWord englishWord = state.extra as EnglishWord;
        return MaterialPage(
          key: state.pageKey,
          child: EnglishWordDetailScreen(englishWord),
        );
      },
    ),
  ],
  //遷移ページがないなどのエラーが発生した時に、このページに行く
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: Scaffold(
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  ),
);
