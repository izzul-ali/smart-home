import 'package:flutter/material.dart';
import 'package:smart_home_app/constant/colors.dart';

class CategoryWidget extends StatefulWidget {
  final List<String> categories;

  const CategoryWidget({
    super.key,
    required this.categories,
  });

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  late String selectedCategory = widget.categories[0];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widget.categories
            .map(
              (String category) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategory = category;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      category,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: selectedCategory == category
                            ? COLORS.primaryTextColor
                            : COLORS.secondaryTextColor,
                      ),
                    ),
                    selectedCategory == category
                        ? Column(
                            children: [
                              const SizedBox(height: 7),
                              Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  color: COLORS.primaryIconColor,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ],
                          )
                        : const SizedBox.shrink()
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
