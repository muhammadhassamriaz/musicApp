import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:karaoke/module/view/search.dart';
import 'package:karaoke/res/color.dart';
import '../../../res/constants.dart';
import '../../../res/globals.dart';
import '../../widgets/custom_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingHeader extends StatefulWidget {
  const SingHeader({Key? key}) : super(key: key);

  @override
  State<SingHeader> createState() => _SingHeaderState();
}

class _SingHeaderState extends State<SingHeader> {
  final TextEditingController _searchTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SB_1H,
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: WIDTH_1,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        textEditingController: _searchTextEditingController,
                        hintText: "Search by songs or singers.....",
                        labelText: "",
                        isSearchField: true,
                        onTap: () {
                          navigatorKey.currentState?.push(
                            MaterialPageRoute(
                              builder: (_) => const SearchView(),
                            ),
                          );
                        },
                        suffixIcon: SvgPicture.asset(Constants.SEARCHSVG),
                      ),
                    ),
                    SizedBox(
                      width: defaultSize.screenWidth * .03,
                    ),
                    Container(
                      height: HEIGHT_4,
                      width: HEIGHT_4,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        color: Colors.white,
                        borderRadius: BORDER_CIRCULAR_RADIUS,
                      ),
                      child: InkWell(
                        borderRadius: BORDER_CIRCULAR_RADIUS,
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: SvgPicture.asset(
                            Constants.LOGINSVG,
                            height: HEIGHT_2,
                            width: HEIGHT_2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SB_1H,
            ],
          ),
        ),
        SB_1H,
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: WIDTH_1,
          ),
          child: Column(
            children: [
              ImageSlideshow(
                children: List.generate(
                  3,
                  (index) {
                    return Container(
                      height: HEIGHT_5 * 3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BORDER_CIRCULAR_RADIUS,
                        image: const DecorationImage(
                          image: AssetImage(
                            Constants.MUSICTHUMBNAIL,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SB_1H,
              Container(
                height: HEIGHT_5,
                decoration: BoxDecoration(
                  color: PIN_FIELD_COLOR,
                  borderRadius: BORDER_CIRCULAR_RADIUS,
                ),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Free Style".toUpperCase(),
                          style: subTitleTextStyle(context),
                        ),
                        Text(
                          "Off Line".toUpperCase(),
                          style: buttonTextStyle(context)?.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      Constants.MUSICICON,
                    ),
                    SB_3W,
                    Container(
                      height: HEIGHT_4,
                      width: HEIGHT_4,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: SECONDARY_COLOR,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
