import 'package:flutter/material.dart';

class IconAndLabel extends StatelessWidget {
  const IconAndLabel({
    super.key,
    required this.label,
    required this.icon,
  });

  final String label;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffF6F6F6),
          ),
          child: icon,
        ),

        const SizedBox(height: 8,),

        Text(label, style: Theme.of(context).textTheme.bodySmall,),
      ],
    );
  }
}
