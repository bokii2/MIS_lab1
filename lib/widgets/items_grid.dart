import 'package:flutter/material.dart';
import '../models/Item.dart';
import 'item_card.dart';

class ItemsGrid extends StatefulWidget {
  final List<Item> items;

  const ItemsGrid({super.key, required this.items});

  @override
  State<ItemsGrid> createState() => _ItemsGridState();
}

class _ItemsGridState extends State<ItemsGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 1,
        mainAxisSpacing: 20,
        childAspectRatio: 200 / 244,
        shrinkWrap: true,
        children: widget.items
            .map((item) => ItemCard(
                  id: item.id,
                  name: item.name,
                  image: item.image,
                  description: item.description,
                  price: item.price,
                ))
            .toList());
  }
}
