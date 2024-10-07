// lib/model/item.dart
class Item {
  final String name;
  final int price;
  final String imageUrl; // Foto produk
  final int stock; // Stok
  final double rating; // Rating

  Item({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.stock,
    required this.rating,
  });
}