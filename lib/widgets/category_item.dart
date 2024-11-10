import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String category;
  final bool selected;

  // ValueNotifier to track the size of the widget
  final ValueNotifier<Size> notifier = ValueNotifier<Size>(Size.zero);

  CategoryItem({super.key, required this.category, required this.selected});

  @override
  Widget build(BuildContext context) {
    // This is used to update the size of the widget after it's built
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final RenderBox renderBox = context.findRenderObject() as RenderBox;
      notifier.value = renderBox.size;
    });

    return ValueListenableBuilder<Size>(
      valueListenable: notifier,
      builder: (context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              category,
              style: TextStyle(
                color: selected ? Colors.blue : Colors.white,
                fontSize: 16,
                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            const SizedBox(height: 2),
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              width: selected ? value.width * 0.5 : 0,
              height: 2.5,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        );
      },
    );
  }
}
