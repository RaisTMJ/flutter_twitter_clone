import 'package:flutter/material.dart';

import 'theme.dart';

class CustomTheme extends StatefulWidget {
  final Widget child;
  final ThemeKeys initialThemeKey;

  const CustomTheme({Key key, this.initialThemeKey, @required this.child}) : super(key: key);

  @override
  CustomThemeState createState() => CustomThemeState();

  static ThemeData of(BuildContext context) {
    _CustomTheme inherited = (context.dependOnInheritedWidgetOfExactType<_CustomTheme>());
    print(inherited.data.theme);
    return inherited.data.theme;
  }

  static CustomThemeState instanceOf(BuildContext context) {
    _CustomTheme inherited = (context.dependOnInheritedWidgetOfExactType<_CustomTheme>());
    return inherited.data;
  }
}
class CustomThemeState extends State<CustomTheme> {
  ThemeData _theme;

  ThemeData get theme => _theme;

  ThemeKeys _themeKey;

  ThemeKeys get themeKey => _themeKey;

  bool get isDart => _themeKey == ThemeKeys.DARK || _themeKey == ThemeKeys.DARKER;

  @override
  void initState() {
    _theme = Themes.getThemeFromKey(widget.initialThemeKey);
    _themeKey = widget.initialThemeKey;
    super.initState();
  }

  void changeTheme(ThemeKeys themeKey) {
    setState(() {
      _theme = Themes.getThemeFromKey(themeKey);
      _themeKey = themeKey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new _CustomTheme(
      data: this,
      child: widget.child,
    );
  }
}
class _CustomTheme extends InheritedWidget {
  final CustomThemeState data;

  _CustomTheme({this.data, Key key, @required Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_CustomTheme oldWidget) {
    return true;
  }
}
