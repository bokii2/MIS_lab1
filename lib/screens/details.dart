import 'package:flutter/material.dart';

import '../models/Item.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back)),
          title: const Text("Details"),
        ),
        body: Column(children: [
          Image.network(
            item.image,
            width: double.infinity,
            height: 400,
            fit: BoxFit.cover,
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${item.name} \t\t ${item.price}\$",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 32,
                    child: Text(
                      item.description,
                      style: const TextStyle(fontSize: 20),
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ))
        ]));
  }
}
