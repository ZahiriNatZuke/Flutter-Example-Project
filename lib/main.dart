import 'package:flutter/material.dart';
import 'package:app/src/routes/routes.dart';
import 'package:app/src/presentation/views/alert_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components Temp',
      initialRoute: '/',
      routes: getRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const AlertPage());
      },
    );
  }
}
