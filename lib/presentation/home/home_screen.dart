import 'package:flutter/material.dart';
import 'package:market_place_app/presentation/home/components/carousel_widget.dart';
import 'package:market_place_app/presentation/home/components/persistent_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                expandedHeight: 320.0,
                floating: false,
                pinned: true,
                forceElevated: innerBoxIsScrolled,
                title: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey),
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
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
            ),
          ];
        },
        body: Builder(
          builder: (context) {
            return CustomScrollView(
              slivers: [
                SliverOverlapInjector(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                ),
                SliverPersistentHeader(delegate: PersistentHeader(
                  color: const Color(0xffF9F9F9),
                  widget: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Best Product", style: Theme.of(context).textTheme.titleLarge,),
                        Text("See more", style: Theme.of(context).textTheme.bodyLarge,),
                      ],
                    ),
                  ),
                ),),
              ],
            );
          },
        ),
      ),
    );
  }
}
