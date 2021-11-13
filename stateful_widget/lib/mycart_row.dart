import 'package:flutter/material.dart';
import 'package:stateful_widget/smoothie.dart';

class MyCartRow extends StatefulWidget {
  final Smoothie smoothie;
  final ValueChanged<Smoothie> callback;

  const MyCartRow({
    Key? key,
    required this.smoothie,
    required this.callback,
  }) : super(key: key);

  @override
  _MyCartRowState createState() => _MyCartRowState();
}

class _MyCartRowState extends State<MyCartRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image(image: AssetImage(widget.smoothie.imageName)),
            
            Positioned(
                top: 4,
                right: 4,
                child: IconButton(
                    onPressed: () => widget.callback(widget.smoothie),
                    icon: const Icon(
                      Icons.remove_shopping_cart,
                      color: Colors.pinkAccent,
                    )
                )
            )
          ],
        ),
        Row(
          children: [
            Text(
              widget.smoothie.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
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
        ),
        Text(widget.smoothie.description),
      ],
    );
  }
}
