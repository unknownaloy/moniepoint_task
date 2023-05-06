import 'dart:math';

import 'package:market_place_app/data/model/item_model.dart';

final List<ItemModel> dummyItems = _generateDummyItems(10);

List<ItemModel> _generateDummyItems(int count) {
  const List<String> shopNames = ['Shop A', 'Shop B', 'Shop C'];
  const List<String> brandNames = ['ChArmkpR', 'Gucci', 'Prada'];
  const List<String> colors = ['Red', 'Blue', 'Green'];
  const List<String> categories = ["Shirt", 'Trouser', 'Blouse'];
  const List<String> itemNames = [
    "Essentials Men's Short-Sleeve Crewneck T-Shirt",
    'Item 2',
    'Item 3'
  ];

  List<String> assetVariations = [
    "assets/images/shirt_01.png",
    "assets/images/shirt_02.png",
    "assets/images/shirt_03.png",
    "assets/images/shirt_04.png",
  ];

  final List<ItemModel> items = [];

  final random = Random();
  for (int i = 0; i < count; i++) {
    // Generate a rating between 1.0^ and 5.0^ to fixed 2 decimal places as String
    final rating = (1.0 + random.nextDouble() * 4.0).toStringAsFixed(1);

    // Generate a fixed 2 decimal places amount as a string
    final amount = (random.nextDouble() * 100).toStringAsFixed(2);
    final item = ItemModel(
      shopName: shopNames[random.nextInt(shopNames.length)],
      brandName: brandNames[random.nextInt(brandNames.length)],
      color: colors[random.nextInt(colors.length)],
      category: categories[random.nextInt(categories.length)],
      // name: itemNames[random.nextInt(itemNames.length)],
      name: "Essentials Men's Short-Sleeve Crewneck T-Shirt",
      rating: double.parse(rating),
      reviews: random.nextInt(100),
      currency: '\$',
      amount: double.parse(amount),
      soldCount: random.nextInt(1000),
      assetName: "assets/images/shirt_02.png",
      assetVariations: assetVariations,
      isLiked: random.nextBool(),
    );

    items.add(item);
  }

  return items;
}
