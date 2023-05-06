import 'package:flutter/material.dart';

class BulletPointWidget extends StatelessWidget {
  const BulletPointWidget({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: CircleAvatar(
            radius: 2,
            backgroundColor: Color(0xff7C7E87),
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Text(
            content,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}
