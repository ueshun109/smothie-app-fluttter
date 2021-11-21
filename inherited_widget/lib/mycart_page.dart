import 'package:flutter/material.dart';
import 'package:inherited_widget/favorites_store.dart';
import 'package:inherited_widget/mycart_row.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({Key? key}) : super(key: key);

  Widget myCartList(BuildContext context) {
    final state = FavoritesStore.of(context);

    return ListView.separated(
      itemCount: state.favoritesSmoothies.length,
      itemBuilder: (context, index) {
        return Container(
            margin: const EdgeInsets.all(8),
            child: MyCartRow(
              smoothie: state.favoritesSmoothies.elementAt(index),
              callback: (smoothie) {
                state.remove(smoothie);
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
    final state = FavoritesStore.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyCart'),
      ),
      body: Center(
        child: state.favoritesSmoothies.isEmpty
          ? const Text("Your cart is empty")
          : myCartList(context),
      )
    );
  }
}
