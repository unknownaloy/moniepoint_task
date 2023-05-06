import 'package:flutter/material.dart';

class PersistentHeader extends SliverPersistentHeaderDelegate {
  PersistentHeader({
    required this.widget,
    this.color = Colors.white,
    this.height = 56.0,
  });

  final Widget widget;
  final Color color;
  final double height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: Container(
        margin: EdgeInsets.zero,
        color: color,
        child: Center(child: widget),
      ),
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}