import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:market_place_app/data/model/item_model.dart';

class ProductFullView extends StatelessWidget {
  const ProductFullView({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    final format =  NumberFormat.compact();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: const Color(0xffF7F7F7),
                    height: 336,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(item.assetName),
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ...item.assetVariations.map(
                                (variation) => Container(
                                  margin: const EdgeInsets.only(bottom: 8),
                                  height: 56,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    // color: const Color(0xffCECECE),
                                    color: Colors.yellowAccent,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      variation,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24,),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.storefront_outlined),
                      const SizedBox(width: 8,),
                      Text(item.shopName, style: Theme.of(context).textTheme.labelLarge,),
                    ],
                  ),

                  const SizedBox(height: 16,),

                  Text(item.name, style: Theme.of(context).textTheme.titleLarge,),

                  const SizedBox(height: 24,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.star, color: Color(0xffFAB058),),
                          const SizedBox(width: 4,),
                          Text("${item.rating} Ratings", style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      ),
                      const CircleAvatar(radius: 2, backgroundColor: Color(0xff989AA2),),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("${format.format(item.reviews)} Reviews", style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      ),
                      const CircleAvatar(radius: 2, backgroundColor: Color(0xff989AA2),),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("${format.format(item.soldCount)} Sold", style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 64,
            width: double.infinity,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
