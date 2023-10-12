// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:hastapos/utils/snackbar_custom/snackbar_controller.dart';

import 'snackbar_widget.dart';

typedef OnTap = void Function(SnackBarUtilsWidget snack);

SnackbarUtilsController showSnackbar(SnackBarUtilsWidget snackbar) {
  final controller = SnackbarUtilsController(snackbar);
  controller.show();
  return controller;
}

SnackbarUtilsController snackbar({
  String? title,
  TextStyle? titleStyle,
  Widget? titleCustom,
  String? message,
  TextStyle? messageStyle,
  Widget? messageCustom,
  Color? colorText,
  Duration? duration = const Duration(seconds: 3),
  bool instantInit = true,
  SnackPosition? snackPosition,
  Widget? icon,
  double? maxWidth,
  EdgeInsets? margin,
  EdgeInsets? padding,
  double? borderRadius,
  Color? borderColor,
  double? borderWidth,
  Color? backgroundColor,
  Color? leftBarIndicatorColor,
  List<BoxShadow>? boxShadows,
  Gradient? backgroundGradient,
  OnTap? onTap,
  bool? isDismissible,
  DismissDirection? dismissDirection,
  SnackStyle? snackStyle,
  Curve? forwardAnimationCurve,
  Curve? reverseAnimationCurve,
  Duration? animationDuration,
  double? barBlur,
  double? overlayBlur,
  SnackbarStatusCallback? snackbarStatus,
  Color? overlayColor,
}) {
  final getSnackBar = SnackBarUtilsWidget(
    title: title,
    titleCustom: titleCustom,
    message: message,
    messageCustom: messageCustom,
    snackbarStatus: snackbarStatus,
    snackPosition: snackPosition ?? SnackPosition.BOTTOM,
    borderRadius: borderRadius ?? 15,
    margin: margin ?? const EdgeInsets.symmetric(horizontal: 10),
    duration: duration,
    barBlur: barBlur ?? 7.0,
    backgroundColor: backgroundColor ?? Colors.grey.withOpacity(0.2),
    icon: icon,
    maxWidth: maxWidth,
    padding: padding ?? const EdgeInsets.all(16),
    borderColor: borderColor,
    borderWidth: borderWidth,
    leftBarIndicatorColor: leftBarIndicatorColor,
    boxShadows: boxShadows,
    backgroundGradient: backgroundGradient,
    onTap: onTap,
    isDismissible: isDismissible ?? true,
    dismissDirection: dismissDirection,
    snackStyle: snackStyle ?? SnackStyle.FLOATING,
    forwardAnimationCurve: forwardAnimationCurve ?? Curves.easeOutCirc,
    reverseAnimationCurve: reverseAnimationCurve ?? Curves.easeOutCirc,
    animationDuration: animationDuration ?? const Duration(seconds: 1),
    overlayBlur: overlayBlur ?? 0.0,
    overlayColor: overlayColor ?? Colors.transparent,
  );
  final controller = SnackbarUtilsController(getSnackBar);
  if (instantInit) {
    controller.show();
  } else {
    //routing.isSnackbar = true;
    ambiguate(SchedulerBinding.instance)?.addPostFrameCallback((_) {
      controller.show();
    });
  }
  return controller;
}
