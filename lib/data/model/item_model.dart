class ItemModel {
  const ItemModel({
    required this.shopName,
    required this.brandName,
    required this.color,
    required this.category,
    required this.name,
    required this.rating,
    required this.reviews,
    required this.currency,
    required this.amount,
    required this.soldCount,
    required this.assetName,
    required this.isLiked,
  });

  final String shopName;
  final String brandName;
  final String color;
  final String category;
  final String name;
  final double rating;
  final int reviews;
  final String currency;
  final double amount;
  final int soldCount;
  final String assetName;
  final bool isLiked;
}
