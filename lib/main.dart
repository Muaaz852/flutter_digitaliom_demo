import 'package:flutter/material.dart';

import 'package:digitaliom/pages/HomePage.dart';
import 'package:digitaliom/pages/LoginPage.dart';
import 'package:digitaliom/pages/CreateAccountPage.dart';
import 'package:digitaliom/pages/TermsAndConditionsPage.dart';
import 'package:digitaliom/pages/PrivacyPolicyPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const _customPrimaryColor = 0xFF8836200;
  static const MaterialColor customMaterialColor = const MaterialColor(
    _customPrimaryColor,
    const <int, Color>{
      50:  const Color(0xFFe0e0e0),
      100: const Color(0xFFb3b3b3),
      200: const Color(0xFF808080),
      300: const Color(0xFF4d4d4d),
      400: const Color(0xFF262626),
      500: const Color(_customPrimaryColor),
      600: const Color(0xFF000000),
      700: const Color(0xFF000000),
      800: const Color(0xFF000000),
      900: const Color(0xFF000000),
    }
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digitaliom',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/Login': (BuildContext context) => LoginPage(),
        '/CreateAccount': (BuildContext context) => CreateAccountPage(),
        '/TermsAndConditions': (BuildContext context) => TermsAndConditionsPage(),
        '/PrivacyPolicy': (BuildContext context) => PrivacyPolicyPage(),
      },
      onUnknownRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => HomePage());
      },
    );
  }
}
