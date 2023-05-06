import 'package:flutter/material.dart';
import 'package:market_place_app/presentation/home/components/carousel_widget.dart';
import 'package:market_place_app/presentation/home/components/icon_and_label.dart';
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
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 16,
                      right: 16,
                      bottom: 32,
                    ),
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          IconAndLabel(
                            label: "Category",
                            icon: Icon(
                              Icons.category_outlined,
                            ),
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          IconAndLabel(
                            label: "Flight",
                            icon: Icon(
                              Icons.flight_outlined,
                            ),
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          IconAndLabel(
                            label: "Bill",
                            icon: Icon(
                              Icons.description_outlined,
                            ),
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          IconAndLabel(
                            label: "Data",
                            icon: Icon(
                              Icons.language,
                            ),
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          IconAndLabel(
                            label: "Category",
                            icon: Icon(
                              Icons.category,
                            ),
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          IconAndLabel(
                            label: "Top Up",
                            icon: Icon(
                              Icons.toll_outlined,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverPersistentHeader(
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
              ],
            );
          },
        ),
      ),
    );
  }
}
