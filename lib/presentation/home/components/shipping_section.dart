import 'package:flutter/material.dart';

class ShippingSection extends StatelessWidget {
  const ShippingSection({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Shipping Information:",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 16,
        ),
        RichText(
          text: TextSpan(
            text: 'Delivery:  ',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: const Color(0xff7C7E87),
            ),
            children: <TextSpan>[
              TextSpan(
                text: "Shipping from Jakarta, Indonesia",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: brightness == Brightness.light ? Colors.black : Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
            text: 'Shipping:  ',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: const Color(0xff7C7E87),
            ),
            children: <TextSpan>[
              TextSpan(
                text: "Free International Shipping",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: brightness == Brightness.light ? Colors.black : Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
            text: 'Arrive:  ',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: const Color(0xff7C7E87),
            ),
            children: <TextSpan>[
              TextSpan(
                text: "Estimated arrival on 25 - 27 Oct 2022",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: brightness == Brightness.light ? Colors.black : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
