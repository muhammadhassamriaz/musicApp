import '../../package/route.dart';

ScrollConfiguration scrollBehavior(BuildContext context, Widget? child) {
  return ScrollConfiguration(
    behavior: const ScrollBehaviorModified(),
    child: child!,
  );
}
