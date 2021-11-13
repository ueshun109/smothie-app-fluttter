import 'package:flutter/material.dart';

@immutable
class Smoothie {
  final String id;
  final String title;
  final String description;
  final int price;

  String get imageName => 'images/$id.jpg';

  const Smoothie({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
  });
}

enum Smoothies {
  berryBlue,
  carrotChops,
  pinaYCoco,
  hulkingLemonade,
  kiwiCutie,
  lemonberry,
  loveYouBerryMuch,
  mangoJambo,
  oneInAMelon,
  papasPapaya,
  peanutButterCup,
  sailorMan,
  thatsASmore,
  thatsBerryBananas,
}

extension SmoothiesExt on Smoothies {
  Smoothie get smoothie {
    switch (this) {
      case Smoothies.berryBlue:
        return const Smoothie(
          id: "berry-blue",
          title: "Berry Blue",
          description:
              "*Filling* and *refreshing*, this smoothie will fill you with joy!",
          price: 480,
        );
      case Smoothies.carrotChops:
        return const Smoothie(
          id: "carrot-chops",
          title: "Carrot Chops",
          description:
              "*Packed* with vitamin A and C, Carrot Chops is a great way to start your day!",
          price: 480,
        );
      case Smoothies.pinaYCoco:
        return const Smoothie(
          id: "pina-y-coco",
          title: "Piña y Coco",
          description: "Enjoy the *tropical* flavors of coconut and pineapple!",
          price: 480,
        );
      case Smoothies.hulkingLemonade:
        return const Smoothie(
          id: "pina-y-coco",
          title: "Hulking Lemonade",
          description:
              "This is not just *any* lemonade. It will give you *powers* you'll struggle to control!",
          price: 480,
        );
      case Smoothies.kiwiCutie:
        return const Smoothie(
          id: "kiwi-cutie",
          title: "Kiwi Cutie",
          description:
              "Kiwi Cutie is beautiful *inside* ***and*** *out*! Packed with nutrients to start your day!",
          price: 480,
        );
      case Smoothies.lemonberry:
        return const Smoothie(
          id: "lemonberry",
          title: "Lemonberry",
          description: "A refreshing blend that's a *real kick*!",
          price: 480,
        );
      case Smoothies.loveYouBerryMuch:
        return const Smoothie(
          id: "love-you-berry-much",
          title: "Love You Berry Much",
          description:
              "If you *love* berries berry berry much, you will love this one!",
          price: 480,
        );
      case Smoothies.mangoJambo:
        return const Smoothie(
          id: "love-you-berry-much",
          title: "Mango Jambo",
          description: "Dance around with this *delicious* tropical blend!",
          price: 480,
        );
      case Smoothies.oneInAMelon:
        return const Smoothie(
          id: "one-in-a-melon",
          title: "One in a Melon",
          description:
              "Feel special this summer with the *coolest* drink in our menu!",
          price: 480,
        );
      case Smoothies.papasPapaya:
        return const Smoothie(
          id: "papas-papaya",
          title: "Papa's Papaya",
          description:
              "Papa would be proud of you if he saw you drinking this!",
          price: 480,
        );
      case Smoothies.peanutButterCup:
        return const Smoothie(
          id: "peanut-butter-cup",
          title: "Peanut Butter Cup",
          description:
              "Ever wondered what it was like to *drink a peanut butter cup*? Wonder no more!",
          price: 480,
        );
      case Smoothies.sailorMan:
        return const Smoothie(
          id: "sailor-man",
          title: "Sailor Man",
          description: "*Get strong* with this delicious spinach smoothie!",
          price: 480,
        );
      case Smoothies.thatsASmore:
        return const Smoothie(
          id: "thats-a-smore",
          title: "That's a Smore!",
          description:
              "When the world seems to rock like you've had too much choc, that's *a smore*!",
          price: 480,
        );
      case Smoothies.thatsBerryBananas:
        return const Smoothie(
          id: "thats-berry-bananas",
          title: "That's Berry Bananas!",
          description: "You'll go *crazy* with this classic!",
          price: 480,
        );
    }
  }
}
