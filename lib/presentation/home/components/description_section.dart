import 'package:flutter/material.dart';
import 'package:market_place_app/presentation/home/components/bullet_point_widget.dart';

class DescriptionSection extends StatefulWidget {
  const DescriptionSection({super.key});

  @override
  State<DescriptionSection> createState() => _DescriptionSectionState();
}

class _DescriptionSectionState extends State<DescriptionSection> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      key: UniqueKey(),
      initiallyExpanded: _isExpanded,
      trailing: _isExpanded
          ? const SizedBox.shrink()
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "See more",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: const Color(0xff4BB198),
                        fontWeight: FontWeight.w700,
                      ),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Icon(
                  Icons.expand_more_outlined,
                  size: 14,
                )
              ],
            ),
      shape: const RoundedRectangleBorder(
        side: BorderSide.none,
      ),
      tilePadding: EdgeInsets.zero,
      childrenPadding: const EdgeInsets.only(left: 8),
      title: Text(
        "Description:",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      children: [
        const BulletPointWidget(
          content:
              "Long-sleeve dress shirt in classic fit featuring button-down collar",
        ),
        const BulletPointWidget(
          content: "Patch Pocket on the Left Side",
        ),
        const BulletPointWidget(
          content: "Duration Combination Cotton Fabric",
        ),
        const BulletPointWidget(
          content: "Comfortable and quality dress shirt",
        ),
        const BulletPointWidget(
          content: "Go To Classic button shirt for all special occasions",
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          "Chat with us if there is anything you need to ask about the product :)",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(
          height: 24,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              setState(() => _isExpanded = !_isExpanded);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "See less",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: const Color(0xff4BB198),
                        fontWeight: FontWeight.w700,
                      ),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Icon(
                  Icons.expand_less_outlined,
                  size: 14,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
      ],
      onExpansionChanged: (value) {
        setState(() => _isExpanded = value);
      },
    );
  }
}
