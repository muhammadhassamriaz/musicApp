import '../../package/route.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: HEIGHT_5 * 4,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    Constants.SEARCHTHUMBNAIL,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      CustomBackButton(),
                      Spacer(),
                      CustomBackButton(
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
                  Spacer(),
                  Text(
                    "#Westlife",
                    style: headingTextStyle(context)?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        Constants.MUSICLOGOSVG,
                      ),
                      SizedBox(
                        width: defaultSize.screenWidth * .01,
                      ),
                      Text(
                        "132 Songs",
                        style: hintTextStyle(context),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SB_1H,
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InfoTile(
                        isSong: true,
                      ),
                      Divider(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
