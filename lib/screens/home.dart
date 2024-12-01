import 'package:clothing_app/widgets/items_grid.dart';
import 'package:flutter/material.dart';
import '../models/Item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Item> items = [
    Item(
        id: 1,
        name: "Pants",
        image:
            "https://hunterselement.com.au/cdn/shop/files/FieldPants-Main-Tussock-RGB_54e84f7e-0b62-46cf-86e4-d21c1c9a73b0_5000x.jpg?v=1710449044",
        description: "Pants for hunting",
        price: 130),
    Item(
        id: 2,
        name: "T-Shirt",
        image:
            "https://hunterselement.com.au/cdn/shop/files/TrophyHaulTee-Sand-Main-RGB_5000x.jpg?v=1724646501",
        description: "Perfect T-Shirt for hunting",
        price: 60),
    Item(
        id: 3,
        name: "Cap",
        image:
            "https://hunterselement.com.au/cdn/shop/products/Rivet_Beanie_-_navy_d7da2794-e0ad-4f7b-830c-689a7344267a_5000x.png?v=1682309603",
        description: "Cap for winter",
        price: 25),
    Item(
        id: 4,
        name: "Boots",
        image:
            "https://hunterselement.com.au/cdn/shop/files/ProwlBoot-Main_2_-RGB_5000x.jpg?v=1682557725",
        description: "Perfect boots for hiking",
        price: 280),
    Item(
        id: 4,
        name: "Hoodie",
        image:
            "https://hunterselement.com.au/cdn/shop/files/ClassicHoodieHE-Black-Main-RGB_5000x.jpg?v=1707795510",
        description: "Hoodies are all about warmth and comfort",
        price: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("212012"),
          centerTitle: true,
        ),
        body: ItemsGrid(items: items));
  }
}
