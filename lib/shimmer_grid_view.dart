
// shimmer_grid_view.dart
import 'package:flutter/material.dart';
import 'shimmer_container.dart';

class ShimmerGridView extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final int crossAxisCount;
  final List<Color> colors;
  final Duration duration;

  const ShimmerGridView({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
    required this.crossAxisCount,
    this.colors = const [
      Colors.grey,
      Colors.grey,
      Colors.white,
      Colors.grey,
      Colors.grey,
    ],
    this.duration = const Duration(milliseconds: 1500),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return ShimmerContainer(
          colors: colors,
          duration: duration,
          child: itemBuilder(context, index),
        );
      },
    );
  }
}