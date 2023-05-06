import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RatingReviewSoldTile extends StatelessWidget {
  const RatingReviewSoldTile({
    super.key,
    required this.rating,
    required this.reviews,
    required this.soldCount,
  });

  final double rating;
  final int reviews;
  final int soldCount;

  @override
  Widget build(BuildContext context) {
    final format = NumberFormat.compact();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star,
              color: Color(0xffFAB058),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              "$rating Ratings",
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
        const CircleAvatar(
          radius: 2,
          backgroundColor: Color(0xff989AA2),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${format.format(reviews)} Reviews",
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
        const CircleAvatar(
          radius: 2,
          backgroundColor: Color(0xff989AA2),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${format.format(soldCount)} Sold",
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
      ],
    );
  }
}
