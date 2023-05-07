import 'package:flutter/material.dart';

class IconWithBadge extends StatelessWidget {
  const IconWithBadge({
    super.key,
    required this.badgeText,
    required this.icon,
  });

  final String badgeText;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        icon,
        Positioned(
          top: -4,
          right: -4,
          child: Container(
            padding: badgeText.length == 1
                ? const EdgeInsets.symmetric(horizontal: 4, vertical: 1)
                : const EdgeInsets.symmetric(horizontal: 1, vertical: .8),
            decoration: BoxDecoration(
              color: const Color(0xffEA4C89),
              borderRadius: BorderRadius.circular(2),
            ),
            child: Text(
              badgeText,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.white,
                    fontSize: 8,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
