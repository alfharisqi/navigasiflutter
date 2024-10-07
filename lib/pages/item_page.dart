// lib/item_page.dart
import 'package:flutter/material.dart';
import 'package:navigasiflutter/model/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  ItemPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Column(
        children: [
          Hero(
            tag: item.name,
            child: Image.network(item.imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name: ${item.name}', style: TextStyle(fontSize: 24)),
                Text('Price: ${item.price}'),
                Text('Stock: ${item.stock}'),
                Text('Rating: ${item.rating}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
