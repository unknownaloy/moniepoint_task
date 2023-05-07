import 'package:flutter/material.dart';
import 'package:market_place_app/data/dummy_items.dart';
import 'package:market_place_app/presentation/home/components/carousel_widget.dart';
import 'package:market_place_app/presentation/home/components/persistent_header.dart';
import 'package:market_place_app/presentation/home/components/product_actions.dart';
import 'package:market_place_app/presentation/home/components/product_card.dart';
import 'package:market_place_app/presentation/home/components/search_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 320.0,
            floating: false,
            pinned: true,
            title: const SearchWidget(),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.comment_outlined,
                ),
              ),
            ],
            flexibleSpace: const FlexibleSpaceBar(
              background: CarouselWidget(),
            ),
          ),
          const SliverToBoxAdapter(
            child: ProductActions(),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: PersistentHeader(
              color: const Color(0xffF9F9F9),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Product",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      "See more",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 16,
                childAspectRatio: 3 / 4,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final item = dummyItems[index];
                  return ProductCard(item: item);
                },
                childCount: dummyItems.length,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
