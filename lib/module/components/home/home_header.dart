import '../../../package/route.dart';

class HomeViewHeader extends StatefulWidget {
  const HomeViewHeader({Key? key}) : super(key: key);

  @override
  State<HomeViewHeader> createState() => _HomeViewHeaderState();
}

class _HomeViewHeaderState extends State<HomeViewHeader> {
  final TextEditingController _searchTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        children: [
          SB_1H,
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: WIDTH_1,
            ),
            child: CustomTextField(
              textEditingController: _searchTextEditingController,
              hintText: "Search by songs or singers.....",
              labelText: "",
              isSearchField: true,
              suffixIcon: SvgPicture.asset(Constants.SEARCHSVG),
            ),
          ),
          SB_1H,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  if (context.read<DataProvider>().homeTypeIndex == 0)
                    SvgPicture.asset(
                      Constants.CHECKCIRCLE,
                    ),
                  if (context.read<DataProvider>().homeTypeIndex == 0)
                    SizedBox(
                      width: defaultSize.screenWidth * .01,
                    ),
                  GestureDetector(
                    onTap: () {
                      context.read<DataProvider>().setHomeTypeIndex(0);
                      setState(() {});
                    },
                    child: Text(
                      "Popular",
                      style: labelTextStyle(context)?.copyWith(
                          fontSize: defaultSize.screenWidth * .038,
                          color: context.read<DataProvider>().homeTypeIndex == 0
                              ? PRIMARY_COLOR
                              : Colors.black),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  if (context.read<DataProvider>().homeTypeIndex == 1)
                    SvgPicture.asset(
                      Constants.CHECKCIRCLE,
                    ),
                  if (context.read<DataProvider>().homeTypeIndex == 1)
                    SizedBox(
                      width: defaultSize.screenWidth * .01,
                    ),
                  GestureDetector(
                    onTap: () {
                      context.read<DataProvider>().setHomeTypeIndex(1);
                      setState(() {});
                    },
                    child: Text(
                      "Category",
                      style: labelTextStyle(context)?.copyWith(
                          fontSize: defaultSize.screenWidth * .038,
                          color: context.read<DataProvider>().homeTypeIndex == 1
                              ? PRIMARY_COLOR
                              : Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SB_1H,
        ],
      ),
    );
  }
}
