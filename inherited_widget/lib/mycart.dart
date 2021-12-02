import 'package:flutter/cupertino.dart';
import 'package:inherited_widget/smoothie.dart';

class MyCart extends StatefulWidget {
  final Widget child;

  const MyCart({
    Key? key,
    required this.child,
  }) : super(key: key);

  static MyCartState of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<InheritedMyCart>()!
        .data;
  }

  @override
  MyCartState createState() => MyCartState();
}

class MyCartState extends State<MyCart> {
  Set<Smoothie> _smoothies = {};
  Set<Smoothie> get smoothies => _smoothies;

  @override
  Widget build(BuildContext context) {
    return InheritedMyCart(
        data: this,
        child: widget.child,
    );
  }

  void insert(Smoothie smoothie) {
   setState(() => _smoothies.add(smoothie));
  }

  void remove(Smoothie smoothie) {
    setState(() => _smoothies.remove(smoothie));
  }
}

class InheritedMyCart extends InheritedWidget {
  final MyCartState data;
  const InheritedMyCart({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedMyCart old) => true;
}