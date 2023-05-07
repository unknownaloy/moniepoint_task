import 'package:flutter/material.dart';

class ThemeTile extends StatelessWidget {
  const ThemeTile({
    Key? key,
    required this.label,
    required this.isSelected,
    required this.onSelected,
  }) : super(key: key);

  final String label;
  final bool isSelected;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: label,
      selected: isSelected,
      child: ListTile(
        title: Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        trailing: Container(
          padding: const EdgeInsets.all(4),
          alignment: Alignment.center,
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: isSelected ? null : Border.all(color: Colors.black),
            color: isSelected ? const Color(0xff3474EF) : null,
          ),
          child: isSelected
              ? const Icon(
                  Icons.check,
                  size: 16,
                  color: Colors.white,
                )
              : null,
        ),
        onTap: onSelected,
      ),
    );
  }
}
