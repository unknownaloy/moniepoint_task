import 'dart:math';

import 'package:market_place_app/data/model/item_model.dart';

final List<ItemModel> dummyItems = generateDummyItems(10);

List<ItemModel> generateDummyItems(int count) {
  const List<String> shopNames = ['Shop A', 'Shop B', 'Shop C'];
  const List<String> brandNames = ['ChArmkpR', 'Gucci', 'Prada'];
  const List<String> colors = ['Red', 'Blue', 'Green'];
  const List<String> categories = ["Shirt", 'Trouser', 'Blouse'];
  const List<String> itemNames = [
    "Essentials Men's Short-Sleeve Crewneck T-Shirt",
    'Item 2',
    'Item 3'
  ];

  final List<ItemModel> items = [];

  for (int i = 0; i < count; i++) {
    final random = Random();

    final item = ItemModel(
      shopName: shopNames[random.nextInt(shopNames.length)],
      brandName: brandNames[random.nextInt(brandNames.length)],
      color: colors[random.nextInt(colors.length)],
      category: categories[random.nextInt(categories.length)],
      name: itemNames[random.nextInt(itemNames.length)],
      rating: random.nextDouble() * 5,
      reviews: random.nextInt(100),
      currency: '\$',
      amount: random.nextDouble() * 100,
      soldCount: random.nextInt(1000),
    );

    items.add(item);
  }

  return items;
}
