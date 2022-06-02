import '../../../package/route.dart';

class SubCategory extends StatelessWidget {
  final String title;
  const SubCategory({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: HEIGHT_2,
                    width: HEIGHT_2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    padding: EdgeInsets.zero,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 6,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: defaultSize.screenWidth * .06,
                        ),
                      ),
                    ),
                  ),
                  SB_2W,
                  Text(
                    title,
                    style: subTitleTextStyle(context),
                  ),
                ],
              ),
              SB_1H,
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: WIDTH_2,
                  ),
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Column(
                        children: const [
                          InfoTile(),
                          Divider(),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
