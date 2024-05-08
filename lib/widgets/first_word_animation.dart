import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:olympian/viewmodels/game_viewmodel.dart';
import 'package:provider/provider.dart';

class FirstWordAnimation extends StatelessWidget {
  const FirstWordAnimation(
      {super.key,
      required this.fieldHeight,
      required this.fieldWidth,
      required this.animationSize});
  final double fieldHeight;
  final double fieldWidth;
  final double animationSize;

  @override
  Widget build(BuildContext context) {
    final isNeedFirstWordAnimation =
        context.select((GameViewModel val) => val.isNeedFirstWordAnimation);
    return isNeedFirstWordAnimation
        ? IgnorePointer(
            ignoring: true,
            child: SizedBox(
              height: fieldHeight,
              width: fieldWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Lottie.asset(
                    'assets/animation/Animation.json',
                    alignment: Alignment.center,
                    height: animationSize,
                    width: animationSize,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          )
        : const SizedBox();
  }
}
