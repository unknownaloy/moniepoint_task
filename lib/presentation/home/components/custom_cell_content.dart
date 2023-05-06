import 'package:flutter/material.dart';

class CustomCellContent extends StatelessWidget {
  const CustomCellContent({
    super.key,
    required this.title,
    required this.body,
    this.padding,
  });

  final String title;
  final String body;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(bottom: 10),
      child: RichText(
        text: TextSpan(
          text: '$title: ',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w400,
              ),
          children: <TextSpan>[
            TextSpan(
              text: body,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
