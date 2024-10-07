// lib/home_page.dart
import 'package:flutter/material.dart';
import 'package:navigasiflutter/model/item.dart';
import 'item_page.dart'; // Import halaman detail item

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Rokok Surya Gudang Garam 16',
        price: 35000,
        imageUrl: 'https://3.bp.blogspot.com/-zL0nkd6yV8s/WOTgaggROcI/AAAAAAAABzo/43uqvM3kWSoqj68-M32IPzWvfI1j9skSACLcB/s1600/20170404_171137.jpg',
        stock: 10,
        rating: 4.5,
      ),
      Item(
        name: 'Malboro Filter Red 20',
        price: 40000,
        imageUrl: 'https://www.ciggiesworld.ch/wp-content/uploads/2017/07/Marlboro-Red-Premium-Class-Cigarette.jpg',
        stock: 5,
        rating: 4.7,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Items List"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 3 / 4,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemPage(item: item),
                ),
              );
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: item.name,
                    child: Expanded(
                      child: Image.network(item.imageUrl, fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.name),
                        Text('Price: ${item.price}'),
                        Text('Stock: ${item.stock}'),
                        Text('Rating: ${item.rating}'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Nama: [Nama Anda], NIM: [NIM Anda]',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
