import 'package:flutter/material.dart';

import '../utils/scroll_behavior.dart';

ScrollConfiguration scrollBehavior(BuildContext context, Widget? child) {
  return ScrollConfiguration(
    behavior: const ScrollBehaviorModified(),
    child: child!,
  );
}
