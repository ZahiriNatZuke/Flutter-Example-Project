import 'package:app/src/presentation/views/card_page.dart';
import 'package:flutter/material.dart';
import 'package:app/src/presentation/views/alert_page.dart';
import 'package:app/src/presentation/views/avatar_page.dart';
import 'package:app/src/presentation/views/home_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const HomePage(),
    'alert': (BuildContext context) => const AlertPage(),
    'avatar': (BuildContext context) => const AvatarPage(),
    'card': (BuildContext context) => const CardPage(),
  };
}
