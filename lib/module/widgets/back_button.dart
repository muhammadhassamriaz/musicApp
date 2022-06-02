import '../../package/route.dart';

class CustomBackButton extends StatelessWidget {
  final Color? color;
  final Widget? icon;
  final bool isBorder;
  final VoidCallback? callback;
  const CustomBackButton({
    Key? key,
    this.color,
    this.icon,
    this.isBorder = true,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback ??
          () {
            Navigator.pop(context);
          },
      child: Container(
        height: HEIGHT_2,
        width: HEIGHT_2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color ?? Colors.white,
          border: isBorder ? Border.all() : null,
        ),
        padding: EdgeInsets.zero,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 6,
            ),
            child: icon ??
                Icon(
                  Icons.arrow_back_ios,
                  size: defaultSize.screenWidth * .06,
                ),
          ),
        ),
      ),
    );
  }
}
