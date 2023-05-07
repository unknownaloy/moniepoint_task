import 'package:flutter/material.dart';
import 'package:market_place_app/data/model/item_model.dart';
import 'package:market_place_app/presentation/home/components/checkout_button.dart';
import 'package:market_place_app/presentation/home/components/custom_cell_content.dart';
import 'package:market_place_app/presentation/home/components/description_section.dart';
import 'package:market_place_app/presentation/home/components/rating_review_sold_tile.dart';
import 'package:market_place_app/presentation/home/components/seller_information.dart';
import 'package:market_place_app/presentation/home/components/shipping_section.dart';

class ProductFullView extends StatefulWidget {
  const ProductFullView({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  State<ProductFullView> createState() => _ProductFullViewState();
}

class _ProductFullViewState extends State<ProductFullView>
    with TickerProviderStateMixin {
  late final AnimationController _upperSectionController;
  late final Animation<double> _upperSectionOpacity;

  late final AnimationController _upperMarginController;
  late final Animation<EdgeInsetsGeometry> _upperMarginAnimation;

  late final AnimationController _bottomController;
  late final Animation<double> _bottomOpacityAnimation;

  late final AnimationController _bottomSlideController;
  late final Animation<Offset> _bottomSlideAnimation;

  late final AnimationController _middleOpacityController;
  late final Animation<double> _middleOpacityAnimation;

  void _startAnimations() async {
    _upperSectionController.forward();

    await Future.delayed(const Duration(milliseconds: 500));
    _upperMarginController.forward();

    _middleOpacityController.forward();

    _bottomController.forward();
    await Future.delayed(const Duration(milliseconds: 250));

    _bottomSlideController.forward();
  }

  @override
  void initState() {
    super.initState();

    _upperSectionController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _upperSectionOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _upperSectionController,
        curve: Curves.easeIn,
      ),
    );

    // This has to run for half the time of [_upperSectionController]
    _upperMarginController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _upperMarginAnimation = Tween<EdgeInsetsGeometry>(
      begin: const EdgeInsets.only(top: 56),
      end: EdgeInsets.zero,
    ).animate(
      CurvedAnimation(
        parent: _upperMarginController,
        curve: Curves.easeIn,
      ),
    );

    _bottomController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _bottomOpacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _bottomController,
        curve: Curves.easeIn,
      ),
    );

    _bottomSlideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _bottomSlideAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(
      CurvedAnimation(
        parent: _bottomSlideController,
        curve: Curves.easeIn,
      ),
    );

    _middleOpacityController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );

    _middleOpacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _middleOpacityController,
        curve: Curves.easeIn,
      ),
    );

    _startAnimations();
  }

  @override
  void dispose() {
    _upperSectionController.dispose();
    _upperMarginController.dispose();

    _bottomController.dispose();
    _bottomSlideController.dispose();

    _middleOpacityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
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
      body: AnimatedBuilder(
        animation: _upperSectionController,
        builder: (context, child) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Upper Section
                    Opacity(
                      opacity: _upperSectionOpacity.value,
                      child: Container(
                        margin: _upperMarginAnimation.value,
                        color: const Color(0xffF7F7F7),
                        height: 336,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(widget.item.assetName),
                            ),
                            Positioned(
                              top: 8,
                              left: 8,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ...widget.item.assetVariations.map(
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
                    ),

                    // Middle section
                    Opacity(
                      opacity: _middleOpacityAnimation.value,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.storefront_outlined,
                                color: brightness == Brightness.dark
                                    ? const Color(0xff7C7E87)
                                    : null,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                widget.item.shopName,
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            widget.item.name,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          RatingReviewSoldTile(
                            rating: widget.item.rating,
                            reviews: widget.item.reviews,
                            soldCount: widget.item.soldCount,
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
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, bottom: 16),
                                  child: Text(
                                    "Reviews",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
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
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.middle,
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
                                    body: widget.item.brandName,
                                  ),
                                  CustomCellContent(
                                    title: "Color",
                                    body: widget.item.color,
                                  ),
                                ],
                              ),

                              TableRow(
                                children: <Widget>[
                                  CustomCellContent(
                                    title: "Category",
                                    body: widget.item.category,
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

                          const SizedBox(
                            height: 8,
                          ),

                          // Description
                          const DescriptionSection(),

                          const Divider(),

                          const SizedBox(
                            height: 24,
                          ),

                          // Shipping section
                          const ShippingSection(),

                          const SizedBox(
                            height: 24,
                          ),

                          const Divider(),

                          const SizedBox(
                            height: 24,
                          ),

                          // Seller section
                          const SellerInformation(),

                          const SizedBox(
                            height: 24,
                          ),

                          const Divider(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: _bottomOpacityAnimation.value,
              child: SlideTransition(
                position: _bottomSlideAnimation,
                child: const CheckoutButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
