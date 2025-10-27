import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget lottieWidget(
  String animationPath,
  double height,
  BuildContext context,
) {
  return LottieBuilder.asset(
    animationPath,
    width: MediaQuery.of(context).size.width,
    height: height,
    fit: BoxFit.fill,
  );
}
