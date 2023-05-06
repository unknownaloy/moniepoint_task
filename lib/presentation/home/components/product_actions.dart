import 'package:flutter/material.dart';
import 'package:market_place_app/presentation/home/components/icon_and_label.dart';

class ProductActions extends StatelessWidget {
  const ProductActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
