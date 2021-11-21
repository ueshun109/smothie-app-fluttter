import 'package:flutter/material.dart';
import 'package:inherited_widget/favorites_store.dart';
import 'package:inherited_widget/smoothie.dart';

class SmoothieRow extends StatelessWidget {
  final Smoothie smoothie;

  const SmoothieRow({
    Key? key,
    required this.smoothie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = FavoritesStore.of(context);

    return Container(
        margin: const EdgeInsets.only(bottom: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(right: 8.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image(
                    image: AssetImage(smoothie.imageName),
                    height: 60,
                    width: 60,
                    fit: BoxFit.fill,
                  ),
                )
            ),
            Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        smoothie.title,
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Image(
                          image: AssetImage('images/yen.jpg'),
                          height: 16,
                          width: 16,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          '${smoothie.price}',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                )),
            IconButton(
                onPressed: () {
                  // ボタンをタップされた時にお気に入りの状態によって追加・削除を判断している
                  state.favoritesSmoothies.contains(smoothie)
                      ? state.remove(smoothie)
                      : state.insert(smoothie);
                },
                // お気に入り状態によって表示アイコンを変更している
                icon: state.favoritesSmoothies.contains(smoothie)
                    ? const Icon(Icons.check)
                    : const Icon(Icons.add)
            )
          ],
        )
    );
  }
}