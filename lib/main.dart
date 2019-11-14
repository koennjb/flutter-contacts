import 'package:contactly/HomePage.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'helpers/Constants.dart' as Constants;

void main() => runApp(new ContactlyApp());

class ContactlyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder> {
    Constants.loginPageTag: (context) => LoginPage(),
    Constants.homePageTag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appTitle,
      theme: new ThemeData(
        primaryColor: Constants.appDarkGreyColor
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}