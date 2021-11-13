import 'package:flutter/material.dart';
import 'package:stateful_widget/home_page.dart';
import 'package:stateful_widget/smoothie.dart';

class SmoothieRow extends StatefulWidget {
  final Smoothie smoothie;

  const SmoothieRow({
    Key? key,
    required this.smoothie,
  }) : super(key: key);

  @override
  _SmoothieRowState createState() => _SmoothieRowState();
}

class _SmoothieRowState extends State<SmoothieRow> {
  @override
  Widget build(BuildContext context) {
    final state = context.findAncestorStateOfType<HomePageState>()!;

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
                    image: AssetImage(widget.smoothie.imageName),
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
                        widget.smoothie.title,
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
                          '${widget.smoothie.price}',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    // ボタンをタップされた時にお気に入りの状態によって追加・削除を判断している
                    state.favoritesSmoothies.contains(widget.smoothie)
                        ? state.remove(widget.smoothie)
                        : state.insert(widget.smoothie);
                  });
                },
                // お気に入り状態によって表示アイコンを変更している
                icon: state.favoritesSmoothies.contains(widget.smoothie)
                    ? const Icon(Icons.check)
                    : const Icon(Icons.add)
            )
          ],
        )
    );
  }
}