import 'package:flutter/material.dart';
import 'package:stateful_widget/menu_page.dart';
import 'package:stateful_widget/mycart_page.dart';
import 'package:stateful_widget/smoothie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Set<Smoothie> _favoritesSmoothies = {};
  Set<Smoothie> get favoritesSmoothies => _favoritesSmoothies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        actions: [
          IconButton(
              onPressed: () async {
                var result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyCartPage(smoothies: _favoritesSmoothies,),
                      fullscreenDialog: true,
                    )
                );
                final smoothies = result as Set<Smoothie>;
                setState(() => _favoritesSmoothies = smoothies);
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