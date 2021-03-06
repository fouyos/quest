import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:quest/domain/value/value.dart' as value;
import 'package:quest/presentation/home/home.dart';

/// {@template quest_app}
/// This widget is the root of your application.
/// Points the "App" named "Quest".
/// {@endtemplate}
class QuestApp extends StatelessWidget {
  /// {@macro quest_app}
  const QuestApp();

  @override
  Widget build(_) {
    return ThemeProvider(
      initTheme: value.darkThemeData,
      duration: const Duration(milliseconds: 500),
      child: Builder(
        builder: (BuildContext context) {
          return NeumorphicApp(
            title: value.appName,
            materialTheme: ThemeProvider.of(context),
            home: const HomeView(),
          );
        },
      ),
    );
  }
}
