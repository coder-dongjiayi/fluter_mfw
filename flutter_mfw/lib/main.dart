import 'package:flutter/material.dart';
import 'package:flutter_mfw/routers/router.dart';
import 'package:flutter_mfw/routers/router.dart' as prefix0;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute:"/",
        onGenerateRoute: onGenerateRoute,
      theme: ThemeData(primaryColor: Colors.white),
    );
  }
}
