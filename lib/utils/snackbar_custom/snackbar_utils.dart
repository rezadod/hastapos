import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hastapos/utils/snackbar_custom/snackbar_core.dart';
import 'package:hastapos/utils/style.dart';

class SnackbarUtils {
  // static respFailed(NetworkExceptions networkExceptions,
  //     {String? title,
  //     TextStyle? titleStyle,
  //     Widget? titleCustom,
  //     TextStyle? messageStyle,
  //     Widget? messageCustom,
  //     Color? backgroundColor,
  //     double? borderRadius,
  //     double? borderWidth,
  //     Color? borderColor,
  //     Color? leftBarIndicatorColor,
  //     Icon? icon}) {
  //   return snackbar(
  //     title: title,
  //     titleStyle: titleStyle,
  //     titleCustom: titleCustom,
  //     message: NetworkExceptions.getErrorMessage(networkExceptions),
  //     messageStyle: messageStyle,
  //     messageCustom: messageCustom,
  //     borderRadius: borderRadius,
  //     borderColor: borderColor,
  //     borderWidth: borderWidth,
  //     backgroundColor: backgroundColor ?? blackColors,
  //     dismissDirection: DismissDirection.startToEnd,
  //     leftBarIndicatorColor: leftBarIndicatorColor,
  //     icon: icon ??
  //         const HeroIcon(
  //           HeroIcons.exclamationCircle,
  //           color: whiteColors,
  //           size: 28,
  //         ),
  //   );
  // }

  static alert(dynamic message,
      {String? title,
      TextStyle? titleStyle,
      Widget? titleCustom,
      TextStyle? messageStyle,
      Widget? messageCustom,
      Color? backgroundColor,
      Color? leftBarIndicatorColor,
      Widget? icon,
      SnackbarStatus? status,
      SnackPosition? snackPosition}) {
    return snackbar(
      title: title,
      titleStyle: titleStyle,
      titleCustom: titleCustom,
      message: message ?? null,
      messageStyle: messageStyle ??
          tBody.copyWith(fontSize: 13, fontWeight: medium, color: Colors.white),
      messageCustom: messageCustom,
      backgroundColor: backgroundColor ?? const Color.fromRGBO(0, 0, 0, 0.75),
      dismissDirection: DismissDirection.startToEnd,
      leftBarIndicatorColor: leftBarIndicatorColor,
      snackPosition: snackPosition ?? SnackPosition.BOTTOM,
      snackbarStatus: (status) {
        status;
      },
      icon: icon ??
          const HeroIcon(
            HeroIcons.exclamationCircle,
            color: Colors.white,
            size: 28,
          ),
    );
  }

  static alertTop(dynamic message,
      {String? title,
      TextStyle? titleStyle,
      Widget? titleCustom,
      TextStyle? messageStyle,
      Widget? messageCustom,
      Color? backgroundColor,
      Color? leftBarIndicatorColor,
      Widget? icon,
      SnackbarStatus? status,
      SnackPosition? snackPosition}) {
    return snackbar(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      title: title,
      titleStyle: titleStyle,
      titleCustom: titleCustom,
      message: message ?? null,
      messageStyle: messageStyle ??
          tBody.copyWith(fontSize: 13, fontWeight: medium, color: Colors.white),
      messageCustom: messageCustom,
      backgroundColor: backgroundColor ?? const Color.fromRGBO(0, 0, 0, 0.75),
      dismissDirection: DismissDirection.startToEnd,
      leftBarIndicatorColor: leftBarIndicatorColor,
      snackPosition: snackPosition ?? SnackPosition.TOP,
      snackbarStatus: (status) {
        status;
      },
      icon: icon ??
          const HeroIcon(
            HeroIcons.exclamationCircle,
            color: Colors.white,
            size: 28,
          ),
    );
  }
}
