import 'package:flutter/cupertino.dart';
import 'package:inherited_widget/smoothie.dart';

class FavoritesStore extends StatefulWidget {
  final Widget child;

  const FavoritesStore({
    Key? key,
    required this.child,
  }) : super(key: key);

  static FavoritesStoreState of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<InheritedFavoritesStore>()!
        .data;
  }

  @override
  FavoritesStoreState createState() => FavoritesStoreState();
}

class FavoritesStoreState extends State<FavoritesStore> {
  Set<Smoothie> _favoritesSmoothies = {};
  Set<Smoothie> get favoritesSmoothies => _favoritesSmoothies;

  @override
  Widget build(BuildContext context) {
    return InheritedFavoritesStore(
        data: this,
        child: widget.child,
    );
  }

  void insert(Smoothie smoothie) {
   setState(() => _favoritesSmoothies.add(smoothie));
  }

  void remove(Smoothie smoothie) {
    setState(() => _favoritesSmoothies.remove(smoothie));
  }
}

class InheritedFavoritesStore extends InheritedWidget {
  final FavoritesStoreState data;
  const InheritedFavoritesStore({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedFavoritesStore old) => true;
}