// shimmer_list_view.dart
import 'package:flutter/material.dart';
import 'shimmer_container.dart';

class ShimmerListView extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final List<Color> colors;
  final Duration duration;

  const ShimmerListView({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
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
    return ListView.builder(
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
