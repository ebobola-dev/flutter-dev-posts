import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showGetSnackBar(
  BuildContext context,
  String message, {
  bool closeCurrentSnackbar = true,
  SnackPosition from = SnackPosition.TOP,
  Duration duration = const Duration(seconds: 3),
  Color? textColor,
}) {
  if (closeCurrentSnackbar && Get.isSnackbarOpen) {
    Get.closeCurrentSnackbar();
  }
  Get.snackbar(
    '',
    '',
    titleText: Container(),
    margin: EdgeInsets.only(
      top: from == SnackPosition.TOP ? 48.0 : 0.0,
      left: 16.0,
      right: 16.0,
      bottom: from == SnackPosition.BOTTOM ? 48.0 : 0.0,
    ),
    snackPosition: from,
    snackStyle: SnackStyle.FLOATING,
    duration: duration,
    borderRadius: 7.0,
    padding: const EdgeInsets.all(12.0),
    messageText: Text(
      message,
      style: Theme.of(context)
          .snackBarTheme
          .contentTextStyle!
          .copyWith(color: textColor),
      textAlign: TextAlign.center,
    ),
  );
}
