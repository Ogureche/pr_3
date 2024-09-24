import 'package:flutter/material.dart';
import 'package:pr_3/components/item.dart';
import 'package:pr_3/data/items.dart';


class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('CakeTime')),
      ),


      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return Item(
            imagePath: item.imagePath,
            brand: item.brand,
            title: item.title,
            description: item.description,
          );
    },),
    );
  }
}