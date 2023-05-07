import 'package:flutter/material.dart';

class SellerInformation extends StatelessWidget {
  const SellerInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 32,
          backgroundColor: Color(0xffD1D1D1),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Thrift_Store",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 4,
              ),
              Flexible(
                child: Text(
                  "Active 5 min ago | 96.7% Positive Feedback",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xff4BB198),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.storefront_outlined,
                      color: Color(0xff4BB198),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Visit store",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: const Color(0xff4BB198),
                            fontWeight: FontWeight.w600,
                          ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
