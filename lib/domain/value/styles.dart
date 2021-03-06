import 'package:flutter_neumorphic/flutter_neumorphic.dart';

const _primaryValue = 0xFFF0723D;
const _primarySwatch = MaterialColor(
  _primaryValue,
  <int, Color>{
    50: Color(0xFFF9E9E6),
    100: Color(0xFFF9CCBA),
    200: Color(0xFFF6AB8D),
    300: Color(0xFFF28B60),
    400: Color(_primaryValue),
    500: Color(0xFFEE5D19),
    600: Color(0xFFE35715),
    700: Color(0xFFD65010),
    800: Color(0xFFC8490D),
    900: Color(0xFFB03C04),
  },
);

const _disabledColor = Color(0xFF333333);

/// Application specific [ThemeData].
ThemeData _themeData({
  Color backgroundColor,
}) {
  return ThemeData(
    fontFamily: 'IBMPlexMono',
    primarySwatch: _primarySwatch,
    disabledColor: _disabledColor,
    backgroundColor: backgroundColor,
    scaffoldBackgroundColor: backgroundColor,
    splashColor: backgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: ThemeData.estimateBrightnessForColor(backgroundColor),
  );
}

/// Light mode.
final lightThemeData = _themeData(
  backgroundColor: NeumorphicColors.background,
);

/// Dark mode.
final darkThemeData = _themeData(
  backgroundColor: NeumorphicColors.darkBackground,
);
