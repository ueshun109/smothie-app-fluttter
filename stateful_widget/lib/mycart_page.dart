import 'package:flutter/material.dart';
import 'package:stateful_widget/mycart_row.dart';
import 'package:stateful_widget/smoothie.dart';

class MyCartPage extends StatefulWidget {
  final Set<Smoothie> smoothies;
  const MyCartPage({
    Key? key,
    required this.smoothies,
  }) : super(key: key);

  @override
  _MyCartPageState createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  late Set<Smoothie> smoothies;

  Widget myCartList() {
    return ListView.separated(
      itemCount: smoothies.length,
      itemBuilder: (context, index) {
        return Container(
            margin: const EdgeInsets.all(8),
            child: MyCartRow(
              smoothie: smoothies.elementAt(index),
              callback: (smoothie) {
                setState(() => smoothies.remove(smoothie));
              },
            )
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(height: 8);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    smoothies = widget.smoothies;
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyCart'),
      ),
      body: WillPopScope(
        onWillPop: () {
          Navigator.of(context).pop(smoothies);
          return Future.value(false);
        },
        child: Center(
            child: smoothies.isEmpty
                ? const Text("Your cart is empty")
                : myCartList()
        ),
      ),
    );
  }
}
