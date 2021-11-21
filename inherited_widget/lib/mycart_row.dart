import 'package:flutter/material.dart';
import 'package:inherited_widget/smoothie.dart';

class MyCartRow extends StatelessWidget {
  final Smoothie smoothie;
  final ValueChanged<Smoothie> callback;

  const MyCartRow({
    Key? key,
    required this.smoothie,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image(image: AssetImage(smoothie.imageName)),

            Positioned(
                top: 4,
                right: 4,
                child: IconButton(
                    onPressed: () => callback(smoothie),
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
              smoothie.title,
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
              '${smoothie.price}',
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Text(smoothie.description),
      ],
    );
  }
}

