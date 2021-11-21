import 'package:flutter/material.dart';
import 'package:inherited_widget/smoothie.dart';
import 'package:inherited_widget/smoothie_list.dart';

class MenuPage extends StatelessWidget {
  final smoothies = Smoothies.values;

  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 8),
        child: SmoothieList(smoothies: smoothies,)
    );
  }
}
