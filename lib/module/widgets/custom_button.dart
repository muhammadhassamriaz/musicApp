import 'package:flutter/cupertino.dart';
import '../../package/route.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.textFontSize = 14.0,
    this.isLoading = false,
    this.dim = false,
    this.icon,
    this.height = 45,
    this.textColor = Colors.white,
    this.linearGradient,
    required this.buttonHeight,
    this.style,
    this.buttonWidth,
    this.borderColor,
    this.borderRadius,
  }) : super(key: key);

  final String title;
  final Function onPressed;
  final double textFontSize;
  final bool isLoading;
  final bool dim;
  final Icon? icon;
  final Color textColor;
  final double height;
  final double? buttonHeight;
  final LinearGradient? linearGradient;
  final double? buttonWidth;
  final TextStyle? style;
  final Color? borderColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: dim ? 0.54 : 1,
      child: TextButton(
        onPressed: dim
            ? null
            : () {
                onPressed();
              },
        style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BORDER_CIRCULAR_RADIUS,
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => Colors.black12,
          ),
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Colors.black12,
          ),
          padding: MaterialStateProperty.resolveWith(
            (states) => EdgeInsets.zero,
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: linearGradient ?? LINEAR_GRADIENT,
            borderRadius: borderRadius ?? BORDER_CIRCULAR_RADIUS,
          ),
          child: Container(
            constraints: BoxConstraints(
              minWidth: buttonWidth ?? defaultSize.screenWidth * .3,
              minHeight: buttonHeight ?? HEIGHT_5,
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isLoading)
                  Theme(
                    data: ThemeData(
                      cupertinoOverrideTheme:
                          const CupertinoThemeData(brightness: Brightness.dark),
                    ),
                    child: const CupertinoActivityIndicator(),
                  )
                else if (icon != null)
                  icon!,
                if (!isLoading)
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: style ?? buttonTextStyle(context),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
