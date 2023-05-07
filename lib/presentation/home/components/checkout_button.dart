import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, -2),
            blurRadius: 6,
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Price",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                "\$18.00",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const Spacer(),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 12),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xff4BB198),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          "1",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 16),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xff2B2D41),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                      ),
                    ),
                    child: Text(
                      "Buy Now",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
