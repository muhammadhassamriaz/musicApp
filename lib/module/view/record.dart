import '../../package/route.dart';

class RecordView extends StatefulWidget {
  const RecordView({Key? key}) : super(key: key);

  @override
  State<RecordView> createState() => _RecordViewState();
}

class _RecordViewState extends State<RecordView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const SingSong(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
                horizontal: WIDTH_1,
              ) +
              const EdgeInsets.only(
                top: 20,
              ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  CustomBackButton(
                    color: Colors.white,
                  ),
                  Spacer(),
                  CustomBackButton(
                    color: Colors.white,
                    icon: Padding(
                      padding: EdgeInsets.only(
                        right: 8.0,
                      ),
                      child: Icon(
                        Icons.more_vert,
                      ),
                    ),
                  ),
                ],
              ),
              SB_2H,
              Container(
                decoration: BoxDecoration(
                  color: PIN_FIELD_COLOR,
                  borderRadius: BORDER_CIRCULAR_RADIUS,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: WIDTH_1,
                    vertical: WIDTH_2,
                  ),
                  child: Row(
                    children: [
                      CustomBackButton(
                        callback: () {},
                        icon: SvgPicture.asset(
                          Constants.HEADPHONESVG,
                        ),
                        isBorder: false,
                      ),
                      SB_1W,
                      Expanded(
                        child: Text(
                          "Use Your Headphones microphone for better quality recording!",
                          style: hintTextStyle(context),
                        ),
                      ),
                      SB_1W,
                      Icon(
                        Icons.close,
                        size: defaultSize.screenWidth * .06,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: WIDTH_1,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 35,
                  child: LiquidLinearProgressIndicator(
                    backgroundColor: Colors.grey[200],
                    valueColor: const AlwaysStoppedAnimation(
                      PRIMARY_COLOR,
                    ),
                    borderRadius: WIDTH_1 * 2,
                    borderColor: Colors.transparent,
                    borderWidth: 0,
                    center: Text("Loading...", style: labelTextStyle(context)),
                  ),
                ),
              ),
              SB_1H,
            ],
          ),
        ),
      ),
    );
  }
}
