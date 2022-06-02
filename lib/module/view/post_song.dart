import '../../package/route.dart';

class PostSong extends StatelessWidget {
  const PostSong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: WIDTH_1,
          ),
          child: Column(
            children: [
              SB_1H,
              Row(
                children: [
                  const CustomBackButton(
                    color: Colors.white,
                  ),
                  SB_1W,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Courage",
                        style: subTitleTextStyle(context),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "C",
                                style: labelTextStyle(context)
                                    ?.copyWith(color: SECONDARY_COLOR)),
                            TextSpan(
                                text: " 599", style: hintTextStyle(context)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const CustomBackButton(
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
              SB_5H,
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BORDER_CIRCULAR_RADIUS,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: WIDTH_5 * 2,
                  vertical: WIDTH_4,
                ),
                child: Text(
                  "The next day and night rain or shine You are enough I've seen too many lovers love is fragile like flowers in a greenhouse you say so I'm actually",
                  style: buttonTextStyle(context)?.copyWith(
                    height: defaultSize.screenHeight * .0023,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SB_1H,
              Text(
                "A Beautiful Morning",
                style: subTitleTextStyle(context),
              ),
              Text(
                "The Rascals",
                style: hintTextStyle(context),
              ),
              Spacer(),
              TransparentButton(
                title: Text(
                  "My Karaoke Studio",
                  style: buttonTextStyle(context)?.copyWith(
                    color: SECONDARY_COLOR,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                borderRadius: BORDER_CIRCULAR_RADIUS * 2,
                borderColor: SECONDARY_COLOR,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MyKaraokeStudio(),
                    ),
                  );
                },
                buttonHeight: HEIGHT_3,
              ),
              SB_1H,
              TransparentButton(
                title: Text(
                  "Post",
                  style: buttonTextStyle(context)?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                buttonColor: SECONDARY_COLOR,
                borderRadius: BORDER_CIRCULAR_RADIUS * 2,
                borderColor: SECONDARY_COLOR,
                onPressed: () {
                  Navigator.push(
                    context,
                    SlideUpTransparentRoute(
                      enterWidget: EndSongPopUp(
                        callback: () {
                          Navigator.pop(context);
                        },
                        pressNo: () {},
                        pressYes: () {
                          Navigator.pop(context);
                          Future.delayed(const Duration(seconds: 1), () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const PostSong(),
                              ),
                            );
                          });
                        },
                        child: const PromotionalMusic(),
                      ),
                      routeName: EndSongPopUp.id,
                    ),
                  );
                },
                buttonHeight: HEIGHT_3,
              ),
              SB_1H,
            ],
          ),
        ),
      ),
    );
  }
}
