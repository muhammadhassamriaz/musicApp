import 'package:flutter/material.dart';

import '../../res/globals.dart';

class TransparentButton extends StatelessWidget {
  const TransparentButton({
    Key? key,
    required this.title,
    this.subTitle,
    required this.onPressed,
    this.textFontSize = 14.0,
    this.isLoading = false,
    this.dim = false,
    this.icon,
    this.height = 45,
    this.textColor = Colors.white,
    this.linearGradient,
    this.buttonHeight = 45,
    this.style,
    this.buttonWidth,
    this.borderColor,
    this.borderRadius,
    this.buttonColor,
  }) : super(key: key);

  final Widget title;
  final String? subTitle;
  final Function onPressed;
  final double textFontSize;
  final bool isLoading;
  final bool dim;
  final Icon? icon;
  final Color textColor;
  final Color? buttonColor;
  final double height;
  final double? buttonHeight;
  final LinearGradient? linearGradient;
  final double? buttonWidth;
  final TextStyle? style;
  final Color? borderColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: borderRadius ?? BorderRadius.circular(defaultSize.screenWidth * .02),
        splashColor: Colors.transparent.withOpacity(0.2),
        highlightColor: Colors.transparent,
        onTap: () {
          onPressed();
        },
        child: Container(
          width: buttonWidth ?? double.maxFinite,
          height: buttonHeight ?? HEIGHT_4,
          decoration: BoxDecoration(
            color: buttonColor ?? Colors.white.withOpacity(0.2),
            borderRadius: borderRadius ?? BORDER_CIRCULAR_RADIUS,
            border: Border.all(
              color: borderColor ?? Colors.white,
              width: defaultSize.screenWidth * .003,
            ),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              title,
              Text(
                subTitle ?? "",
                style: labelTextStyle(context)?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
