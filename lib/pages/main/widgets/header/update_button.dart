import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dev_posts/assets/colors/theme_colors.dart';
import 'package:flutter_dev_posts/bloc/posts/posts_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' show pi;

class UpdateButton extends StatefulWidget {
  const UpdateButton({
    super.key,
  });

  @override
  State<UpdateButton> createState() => _UpdateButtonState();
}

class _UpdateButtonState extends State<UpdateButton>
    with TickerProviderStateMixin {
  late final AnimationController _rotateController;
  late final Animation<double> _rotateAnimation;
  late final AnimationController _colorController;
  late final Animation<Color?> _colorAnimation;

  //! Небольшой костыль, описал в Readme
  bool isRepeating = false;

  @override
  void initState() {
    _rotateController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..addListener(() {
        setState(() {});
      });
    _colorController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    )..addListener(() {
        setState(() {});
      });

    _rotateAnimation =
        Tween(begin: 0.0, end: 2 * pi).animate(_rotateController);

    _colorAnimation = ColorTween(
      begin: iconColor,
      end: primaryColor,
    ).animate(_colorController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _rotateController.dispose();
    _colorController.dispose();
    super.dispose();
  }

  void _blocListener(BuildContext context, PostsState postsState) {
    if (postsState.isLoading && !isRepeating) {
      isRepeating = true;
      _rotateController.repeat();
      _colorController.forward();
      return;
    }
    if (!postsState.isLoading && _rotateController.isAnimating) {
      isRepeating = false;
      _rotateController.forward(from: _rotateController.value);
      _colorController.animateBack(
        0.0,
        duration: const Duration(milliseconds: 800),
      );
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    final postsBloc = context.read<PostsBloc>();

    return BlocConsumer<PostsBloc, PostsState>(
      buildWhen: (previous, current) =>
          previous.isInitialization != current.isLoading,
      listener: _blocListener,
      builder: (context, postsState) {
        return IconButton(
          onPressed: () {
            postsBloc.add(const PostsEvent.update());
          },
          icon: Transform.rotate(
            angle: _rotateAnimation.value,
            child: SizedBox(
              child: SvgPicture.asset(
                'assets/icons/refresh.svg',
                color: _colorAnimation.value,
              ),
            ),
          ),
        );
      },
    );
  }
}
