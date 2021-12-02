import 'package:flutter/material.dart';
import 'package:inherited_widget/mycart.dart';
import 'package:inherited_widget/mycart_row.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({Key? key}) : super(key: key);

  Widget myCartList(BuildContext context) {
    final myCart = MyCart.of(context);
    return ListView.separated(
      itemCount: myCart.smoothies.length,
      itemBuilder: (context, index) {
        return Container(
            margin: const EdgeInsets.all(8),
            child: MyCartRow(
              smoothie: myCart.smoothies.elementAt(index),
              callback: (smoothie) {
                myCart.remove(smoothie);
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
    final myCart = MyCart.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyCart'),
      ),
      body: Center(
        child: myCart.smoothies.isEmpty
          ? const Text("Your cart is empty")
          : myCartList(context),
      )
    );
  }
}
