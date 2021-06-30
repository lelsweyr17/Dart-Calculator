import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:list_view/pages/home.dart';
import 'package:list_view/theme.dart';

ThemeData _darkTheme = ThemeData(
  accentColor: Colors.amber[800],
  primaryColor: Colors.black,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.amber[800],
    shadowColor: Colors.grey[300],
    iconTheme: IconThemeData(color: Colors.black),
    centerTitle: true,
  ),
  brightness: Brightness.dark,
);

ThemeData _lightTheme = ThemeData(
  accentColor: Colors.red[700],
  primaryColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.red[700],
    shadowColor: Colors.red[300],
    iconTheme: IconThemeData(color: Colors.white),
    centerTitle: true,
  ),
  brightness: Brightness.light,
);

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(home: HomePage(), theme: theme.getTheme());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (context) => ThemeChanger(_lightTheme),
      child: MaterialAppWithTheme(),
    );
  }
}

void main() => runApp(MyApp());
