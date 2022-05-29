import 'package:flutter/material.dart';
import 'default_size.dart';

class DefaultSizeInit extends StatelessWidget {
  const DefaultSizeInit({
    required this.builder,
    this.designSize = DefaultSize.defaultSize,
    this.splitScreenMode = true,
    Key? key,
  }) : super(key: key);

  final Widget Function() builder;
  final bool splitScreenMode;

  final Size designSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, BoxConstraints constraints) {
      if (constraints.maxWidth != 0) {
        final Orientation orientation =
            constraints.maxWidth > constraints.maxHeight
                ? Orientation.landscape
                : Orientation.portrait;
        DefaultSize.init(constraints,
            orientation: orientation,
            designSize: designSize,
            splitScreenMode: splitScreenMode);
        return builder();
      }
      return Container();
    });
  }
}
