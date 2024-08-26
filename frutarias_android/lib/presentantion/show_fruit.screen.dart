import 'package:flutter/material.dart';
import 'package:frutarias_android/domain/fruit.dart';

class ShowFruitScreen extends StatelessWidget {
  final Fruit fruit;
  const ShowFruitScreen({super.key, required this.fruit
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Produto")),
      body: Column(
        children: [
          Text(fruit.name),
          Text(fruit.price)
        ],
      ),
    );
  }
}
