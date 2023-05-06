import 'package:flutter/material.dart';
import 'package:market_place_app/data/model/item_model.dart';
import 'package:market_place_app/presentation/home/components/custom_cell_content.dart';
import 'package:market_place_app/presentation/home/components/description_section.dart';
import 'package:market_place_app/presentation/home/components/rating_review_sold_tile.dart';
import 'package:market_place_app/presentation/home/components/shipping_section.dart';

class ProductFullView extends StatelessWidget {
  const ProductFullView({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
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
                  // Full item image
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
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.storefront_outlined),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        item.shopName,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    item.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  RatingReviewSoldTile(
                    rating: item.rating,
                    reviews: item.reviews,
                    soldCount: item.soldCount,
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 16),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xff4BB198),
                                width: 2,
                              ),
                            ),
                          ),
                          child: Text(
                            "About Item",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 16),
                          child: Text(
                            "Reviews",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 16,
                  ),

                  Table(
                    // defaultColumnWidth: const IntrinsicColumnWidth(),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    border: const TableBorder(
                      bottom: BorderSide(
                        color: Color(0xffD1D1D1),
                      ),
                    ),
                    children: [
                      /// Gender
                      TableRow(
                        children: <Widget>[
                          CustomCellContent(
                            title: "Brand",
                            body: item.brandName,
                          ),
                          CustomCellContent(
                            title: "Color",
                            body: item.color,
                          ),
                        ],
                      ),

                      TableRow(
                        children: <Widget>[
                          CustomCellContent(
                            title: "Category",
                            body: item.category,
                          ),
                          const CustomCellContent(
                            title: "Material",
                            body: "dummy material",
                          ),
                        ],
                      ),

                      const TableRow(
                        children: <Widget>[
                          CustomCellContent(
                            padding: EdgeInsets.only(bottom: 32),
                            title: "Condition",
                            body: "New",
                          ),
                          CustomCellContent(
                            padding: EdgeInsets.only(bottom: 32),
                            title: "Heavy",
                            body: "200 g",
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 8,),



                  // Description
                  const DescriptionSection(),

                  const Divider(),

                  const SizedBox(height: 24,),

                  const ShippingSection(),

                  const SizedBox(height: 24,),

                  const Divider(),


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
