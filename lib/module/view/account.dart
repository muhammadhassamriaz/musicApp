import '../../package/route.dart';

class AccountView extends StatefulWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  bool isSynced = false;

  int i = 100;
  int _groupValue = -1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: WIDTH_1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SB_1H,
            Center(
              child: Text(
                "Manage Your Tunes",
                style: headingTextStyle(context),
              ),
            ),
            Center(
              child: Text(
                "To sync your Skiza tunes, click on the\nbutton below",
                style: hintTextStyle(context),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: !isSynced
                  ? const SizedBox()
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InfoTile(
                                title: "Assign",
                                isSong: true,
                                callback: () {
                                  i = index;
                                  setState(() {});
                                },
                              ),
                            ),
                            if (i == index)
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      _myRadioButton(
                                        title: "Default",
                                        value: 0,
                                        onChanged: (newValue) => setState(
                                            () => _groupValue = newValue!),
                                      ),
                                      _myRadioButton(
                                        title: "Personal",
                                        value: 1,
                                        onChanged: (newValue) => setState(
                                            () => _groupValue = newValue!),
                                      ),
                                      _myRadioButton(
                                        title: "Group",
                                        value: 2,
                                        onChanged: (newValue) => setState(
                                            () => _groupValue = newValue!),
                                      ),
                                    ],
                                  ),
                                  SB_1H,
                                  Row(
                                    children: [
                                      TransparentButton(
                                        title: Text(
                                          "Set",
                                          style: buttonTextStyle(context),
                                        ),
                                        borderRadius:
                                            BORDER_CIRCULAR_RADIUS * 3,
                                        buttonColor: SECONDARY_COLOR,
                                        onPressed: () {},
                                        buttonHeight: HEIGHT_3,
                                        subTitle: "",
                                        buttonWidth: WIDTH_4 * 5,
                                      ),
                                      SB_1W,
                                      TransparentButton(
                                        title: Text(
                                          "Delete",
                                          style: buttonTextStyle(context)
                                              ?.copyWith(
                                                  color: SECONDARY_COLOR),
                                        ),
                                        borderRadius:
                                            BORDER_CIRCULAR_RADIUS * 3,
                                        borderColor: SECONDARY_COLOR,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            SlideUpTransparentRoute(
                                              enterWidget: EndSongPopUp(
                                                desciption:
                                                    "Do you want to delete \n'my hometown' from your account",
                                                callback: () {
                                                  Navigator.pop(context);
                                                },
                                                pressNo: () {
                                                  Navigator.pop(context);
                                                },
                                                pressYes: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                              routeName: EndSongPopUp.id,
                                            ),
                                          );
                                        },
                                        buttonHeight: HEIGHT_3,
                                        subTitle: "",
                                        buttonWidth: WIDTH_4 * 5,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            Divider(),
                          ],
                        );
                      },
                    ),
            ),
            if (!isSynced)
              TransparentButton(
                title: Text(
                  "Sync Skiza",
                  style: buttonTextStyle(context),
                ),
                borderRadius: BORDER_CIRCULAR_RADIUS * 3,
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
                        },
                        child: SubscribePopUp(
                          callback: () {
                            setState(() {
                              isSynced = !isSynced;
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      routeName: EndSongPopUp.id,
                    ),
                  );
                },
                buttonHeight: HEIGHT_4,
                buttonColor: SECONDARY_COLOR,
              ),
            SB_1H,
          ],
        ),
      ),
    );
  }

  Widget _myRadioButton(
      {required String title, required int value, Function(int?)? onChanged}) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: _groupValue,
          onChanged: onChanged,
          activeColor: SECONDARY_COLOR,
        ),
        SB_1W,
        Text(
          title,
          style: labelTextStyle(context),
        ),
      ],
    );
  }
}
