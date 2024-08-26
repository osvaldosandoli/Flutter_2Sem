import 'package:flutter/material.dart';
import 'package:frutarias_android/datasource/fruit.mock.dart';
import 'package:frutarias_android/domain/fruit.dart';
import 'package:frutarias_android/snnipets.dart';

import 'show_fruit.screen.dart';


class ListFruitScreen extends StatefulWidget {
  const ListFruitScreen({super.key});

  @override
  State<ListFruitScreen> createState() => _ListFruitScreenState();
}

class _ListFruitScreenState extends State<ListFruitScreen> {
  late List<Fruit> _fruits;

  @override
  void initState() {
    _fruits = fruitMock;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista de frutas")),
    body: ListView.builder(
    itemCount: _fruits.length,
        itemBuilder: (context, index){

    return InkWell(
    onTap: (){
      openRoute(context, ShowFruitScreen(fruit: _fruits[index]),

    );
    },
      child: ListTile(
        title: Text(_fruits[index].name),
        subtitle: Text(_fruits[index].price),
      ),
    );
    }
    )
    );
  }
}
