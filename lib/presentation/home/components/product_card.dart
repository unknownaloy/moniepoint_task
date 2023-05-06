import 'package:flutter/material.dart';
import 'package:market_place_app/data/model/item_model.dart';
import 'package:market_place_app/utils/double_extension.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 128,
                width: double.infinity,
                color: const Color(0xffF7F7F7),
                child: Image.asset(
                  item.assetName,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: item.isLiked
                  ? const Icon(
                      Icons.favorite,
                      color: Color(0xffE55986),
                    )
                  : const Icon(Icons.favorite_border_outlined),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: Text(
                  item.category,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                item.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      height: 1.2,
                    ),
              ),

              const SizedBox(
                height: 16,
              ),

              // Rating
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xffFAB058),
                        size: 16,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        "${item.rating} / ${item.reviews}",
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  ),
                  Flexible(
                    child: Text(
                      "${item.currency}${item.amount.toFixedDecimalPlaces()}",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
