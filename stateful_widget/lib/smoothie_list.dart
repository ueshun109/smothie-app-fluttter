import 'package:flutter/material.dart';
import 'package:stateful_widget/smoothie.dart';
import 'package:stateful_widget/smoothie_row.dart';

class SmoothieList extends StatelessWidget {
  final List<Smoothies> smoothies;

  const SmoothieList({Key? key, required this.smoothies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: smoothies.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(8),
            child: SmoothieRow(smoothie: smoothies[index].smoothie,
            )
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(height: 0.5);
        },
    );
  }
}
