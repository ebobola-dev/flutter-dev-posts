import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpsWidget extends StatelessWidget {
  final int ups;
  const UpsWidget({super.key, required this.ups});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(24.0),
          child: SvgPicture.asset(
            'assets/icons/angle-up.svg',
            width: 32.0,
            height: 32.0,
          ),
        ),
        const SizedBox(height: 2.0),
        Text(
          ups.toString(),
          style: Theme.of(context).textTheme.headline2!.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
        const SizedBox(height: 2.0),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(24.0),
          child: SvgPicture.asset(
            'assets/icons/angle-down.svg',
            width: 32.0,
            height: 32.0,
          ),
        ),
      ],
    );
  }
}
