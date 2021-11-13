import 'package:flutter/material.dart';
import 'package:stateful_widget/smoothie.dart';
import 'package:stateful_widget/smoothie_list.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final smoothies = Smoothies.values;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      child: SmoothieList(smoothies: smoothies,)
    );
  }
}
