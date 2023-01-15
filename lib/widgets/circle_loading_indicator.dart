import 'package:flutter/material.dart';
import 'package:flutter_dev_posts/assets/colors/theme_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' show pi;

class CircleLoadingIndicator extends StatefulWidget {
  final Color? color;
  final bool loading;
  const CircleLoadingIndicator({
    super.key,
    this.color,
    this.loading = true,
  });

  @override
  State<CircleLoadingIndicator> createState() => _CircleLoadingIndicatorState();
}

class _CircleLoadingIndicatorState extends State<CircleLoadingIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..addListener(() {
        setState(() {});
      });
    _animation = Tween(begin: 0.0, end: 2 * pi).animate(_controller);
    if (widget.loading) {
      _controller.repeat();
    }
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant CircleLoadingIndicator oldWidget) {
    if (!oldWidget.loading && widget.loading) {
      _controller.repeat();
    }
    if (oldWidget.loading && !widget.loading) {
      _controller.stop();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _animation.value,
      child: SizedBox(
        width: 24.0,
        height: 24.0,
        child: SvgPicture.asset(
          'assets/icons/spinner.svg',
          color: widget.color ?? primaryColor,
        ),
      ),
    );
  }
}
