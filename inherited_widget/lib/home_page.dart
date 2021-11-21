import 'package:flutter/material.dart';
import 'package:inherited_widget/menu_page.dart';
import 'package:inherited_widget/mycart_page.dart';
import 'package:inherited_widget/smoothie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final Set<Smoothie> _favoritesSmoothies = {};
  Set<Smoothie> get favoritesSmoothies => _favoritesSmoothies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyCartPage(),
                      fullscreenDialog: true,
                    )
                );
              },
              icon: const Icon(Icons.shopping_cart_rounded))
        ],
      ),
      body: const MenuPage(),
    );
  }

  void insert(Smoothie smoothie) => _favoritesSmoothies.add(smoothie);

  void remove(Smoothie smoothie) => _favoritesSmoothies.remove(smoothie);
}