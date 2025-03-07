import 'package:flutter/material.dart';

class ShimmerContainer extends StatefulWidget {
  final Widget child;
  final List<Color> colors;
  final Duration duration;

  const ShimmerContainer({
    Key? key,
    required this.child,
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
  _ShimmerContainerState createState() => _ShimmerContainerState();
}

class _ShimmerContainerState extends State<ShimmerContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _shimmerAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..repeat(reverse: true);
    _shimmerAnimation = Tween(begin: -1.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _shimmerAnimation,
      builder: (context, child) {
        return ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: (bounds) {
            return LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: widget.colors,
              stops: [
                _shimmerAnimation.value * 0.5,
                _shimmerAnimation.value * 0.5,
                _shimmerAnimation.value,
                _shimmerAnimation.value + 0.5,
                _shimmerAnimation.value + 0.5,
              ],
            ).createShader(bounds);
          },
          child: widget.child,
        );
      },
    );
  }
}