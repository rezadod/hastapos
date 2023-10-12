// ignore_for_file: sort_child_properties_last

import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart' hide OnTap;
import 'package:hastapos/utils/style.dart';

import 'snackbar_controller.dart';
import 'snackbar_core.dart';

enum RowStyle {
  icon,
  action,
  all,
  none,
}

class SnackBarUtilsWidget extends StatefulWidget {
  final String? title;
  final TextStyle? titleStyle;
  final Widget? titleCustom;
  final String? message;
  final TextStyle? messageStyle;
  final Widget? messageCustom;
  final Color backgroundColor;
  final Color? leftBarIndicatorColor;
  final List<BoxShadow>? boxShadows;
  final Gradient? backgroundGradient;
  final SnackbarStatusCallback? snackbarStatus;
  final DismissDirection? dismissDirection;
  final Widget? icon;
  final OnTap? onTap;
  final Duration? duration;
  final bool isDismissible;
  final double? maxWidth;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final double borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final SnackPosition snackPosition;
  final SnackStyle snackStyle;
  final Curve forwardAnimationCurve;
  final Curve reverseAnimationCurve;
  final Duration animationDuration;
  final double barBlur;
  final double overlayBlur;
  final Color? overlayColor;

  const SnackBarUtilsWidget({
    Key? key,
    this.title,
    this.titleStyle,
    this.titleCustom,
    this.message,
    this.messageStyle,
    this.messageCustom,
    this.icon,
    this.maxWidth,
    this.margin = const EdgeInsets.all(0.0),
    this.padding = const EdgeInsets.all(16),
    this.borderRadius = 0.0,
    this.borderColor,
    this.borderWidth = 1.0,
    this.backgroundColor = const Color(0xFF303030),
    this.leftBarIndicatorColor,
    this.boxShadows,
    this.backgroundGradient,
    this.onTap,
    this.duration,
    this.isDismissible = true,
    this.dismissDirection,
    this.snackPosition = SnackPosition.BOTTOM,
    this.snackStyle = SnackStyle.FLOATING,
    this.forwardAnimationCurve = Curves.easeOutCirc,
    this.reverseAnimationCurve = Curves.easeOutCirc,
    this.animationDuration = const Duration(seconds: 1),
    this.barBlur = 0.0,
    this.overlayBlur = 0.0,
    this.overlayColor = Colors.transparent,
    this.snackbarStatus,
  }) : super(key: key);

  @override
  State createState() => SnackBarUtilsWidgetState();

  SnackbarUtilsController show() {
    return showSnackbar(this);
  }
}

class SnackBarUtilsWidgetState extends State<SnackBarUtilsWidget>
    with TickerProviderStateMixin {
  AnimationController? _fadeController;
  late Animation<double> _fadeAnimation;

  final Widget _emptyWidget = const SizedBox(width: 0.0, height: 0.0);
  final double _initialOpacity = 1.0;
  final double _finalOpacity = 0.4;

  final Duration _pulseAnimationDuration = const Duration(seconds: 1);

  late bool _isTitlePresent;
  late double _messageTopMargin;

  FocusScopeNode? _focusNode;
  late FocusAttachment _focusAttachment;

  final Completer<Size> _boxHeightCompleter = Completer<Size>();

  late CurvedAnimation _progressAnimation;

  final _backgroundBoxKey = GlobalKey();

  double get buttonPadding {
    if (widget.padding.right - 12 < 0) {
      return 4;
    } else {
      return widget.padding.right - 12;
    }
  }

  RowStyle get _rowStyle {
    if (widget.icon != null) {
      return RowStyle.icon;
    } else {
      return RowStyle.none;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      heightFactor: 1.0,
      child: Material(
        color: widget.snackStyle == SnackStyle.FLOATING
            ? Colors.transparent
            : widget.backgroundColor,
        child: SafeArea(
          minimum: widget.snackPosition == SnackPosition.TOP
              ? EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom)
              : EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          bottom: widget.snackPosition == SnackPosition.BOTTOM,
          top: widget.snackPosition == SnackPosition.TOP,
          left: false,
          right: false,
          child: Stack(
            children: [
              FutureBuilder<Size>(
                future: _boxHeightCompleter.future,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if (widget.barBlur == 0) {
                      return _emptyWidget;
                    }
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(widget.borderRadius),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: widget.barBlur,
                          sigmaY: widget.barBlur,
                        ),
                        child: Container(
                          margin: widget.snackPosition == SnackPosition.BOTTOM
                              ? const EdgeInsets.only(bottom: 15)
                              : const EdgeInsets.only(bottom: 15),
                          height: snapshot.data!.height,
                          width: snapshot.data!.width,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.circular(widget.borderRadius),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return _emptyWidget;
                  }
                },
              ),
              _containerWithoutForm()
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _fadeController?.dispose();

    _focusAttachment.detach();
    _focusNode!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _isTitlePresent = (widget.title != null);
    _messageTopMargin = _isTitlePresent ? 6.0 : widget.padding.top;

    _configureLeftBarFuture();

    if (widget.icon != null) {
      _configurePulseAnimation();
      _fadeController?.forward();
    }

    _focusNode = FocusScopeNode();
    _focusAttachment = _focusNode!.attach(context);
  }

  Widget _buildLeftBarIndicator() {
    if (widget.leftBarIndicatorColor != null) {
      return FutureBuilder<Size>(
        future: _boxHeightCompleter.future,
        builder: (buildContext, snapshot) {
          if (snapshot.hasData) {
            return Container(
              color: widget.leftBarIndicatorColor,
              width: 5.0,
              height: snapshot.data!.height,
            );
          } else {
            return _emptyWidget;
          }
        },
      );
    } else {
      return _emptyWidget;
    }
  }

  void _configureLeftBarFuture() {
    ambiguate(SchedulerBinding.instance)?.addPostFrameCallback(
      (_) {
        final keyContext = _backgroundBoxKey.currentContext;
        if (keyContext != null) {
          final box = keyContext.findRenderObject() as RenderBox;
          _boxHeightCompleter.complete(box.size);
        }
      },
    );
  }

  void _configurePulseAnimation() {
    _fadeController =
        AnimationController(vsync: this, duration: _pulseAnimationDuration);
    _fadeAnimation = Tween(begin: _initialOpacity, end: _finalOpacity).animate(
      CurvedAnimation(
        parent: _fadeController!,
        curve: Curves.linear,
      ),
    );

    _fadeController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _fadeController!.reverse();
      }
      if (status == AnimationStatus.dismissed) {
        _fadeController!.forward();
      }
    });

    _fadeController!.forward();
  }

  Widget _containerWithoutForm() {
    final iconPadding = widget.padding.left > 16.0 ? widget.padding.left : 0.0;
    final left = _rowStyle == RowStyle.icon || _rowStyle == RowStyle.all
        ? 4.0
        : widget.padding.left;
    final right = _rowStyle == RowStyle.action || _rowStyle == RowStyle.all
        ? 8.0
        : widget.padding.right;
    return Container(
      key: _backgroundBoxKey,
      constraints: widget.maxWidth != null
          ? BoxConstraints(maxWidth: widget.maxWidth!)
          : null,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        gradient: widget.backgroundGradient,
        boxShadow: widget.boxShadows,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        border: widget.borderColor != null
            ? Border.all(color: widget.borderColor!, width: widget.borderWidth!)
            : null,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _emptyWidget,
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildLeftBarIndicator(),
              if (_rowStyle == RowStyle.icon || _rowStyle == RowStyle.all)
                ConstrainedBox(
                  constraints:
                      BoxConstraints.tightFor(width: 42.0 + iconPadding),
                  child: _getIcon(),
                ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    if (_isTitlePresent)
                      Padding(
                        padding: EdgeInsets.only(
                          top: widget.padding.top,
                          left: left,
                          right: right,
                        ),
                        child: Text(widget.title ?? "",
                            style: widget.titleStyle ??
                                tBody.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 15)),
                      )
                    else
                      _emptyWidget,
                    if (widget.title == null && widget.titleCustom != null)
                      Padding(
                        padding: EdgeInsets.only(
                          top: widget.padding.top,
                          left: left,
                          right: right,
                        ),
                        child: widget.titleCustom,
                      )
                    else
                      _emptyWidget,
                    if (widget.message != null)
                      Padding(
                        padding: EdgeInsets.only(
                          top: _messageTopMargin,
                          left: left,
                          right: right,
                          bottom: widget.padding.bottom,
                        ),
                        child: Text(widget.message ?? "",
                            style: widget.messageStyle ??
                                tBody.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 13)),
                      )
                    else if (widget.message == null &&
                        widget.messageCustom != null)
                      Padding(
                        padding: EdgeInsets.only(
                          top: _messageTopMargin,
                          left: left,
                          right: right,
                          bottom: widget.padding.bottom,
                        ),
                        child: widget.messageCustom,
                      )
                    else
                      _emptyWidget,
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget? _getIcon() {
    if (widget.icon != null && widget.icon is Icon) {
      return FadeTransition(
        opacity: _fadeAnimation,
        child: widget.icon,
      );
    } else if (widget.icon != null) {
      return widget.icon;
    } else {
      return _emptyWidget;
    }
  }
}
