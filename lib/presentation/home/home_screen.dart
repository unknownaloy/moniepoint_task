import 'package:flutter/material.dart';
import 'package:market_place_app/presentation/home/components/carousel_widget.dart';
import 'package:market_place_app/presentation/home/components/icon_and_label.dart';
import 'package:market_place_app/presentation/home/components/persistent_header.dart';
import 'package:market_place_app/presentation/home/components/product_actions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 320.0,
            floating: false,
            pinned: true,
            // forceElevated: innerBoxIsScrolled,
            title: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
                color: Colors.transparent,
              ),
            ),
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
              ),
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.teal[100 * (index % 9)],
                    child: Text('grid item $index'),
                  );
                },
                childCount: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
