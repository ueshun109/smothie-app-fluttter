import 'package:flutter/material.dart';
import 'package:inherited_widget/favorites_store.dart';
import 'home_page.dart';

void main() {
  runApp(const FavoritesStore(child: SmoothieApp()));
}

class SmoothieApp extends StatelessWidget {
  const SmoothieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "smoothie",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/': (BuildContext context) => const HomePage(),
      },
    );
  }
}
