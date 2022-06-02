import '../../package/route.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final _phoneNumberTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: WIDTH_2,
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        SB_2H,
                        Center(
                          child: SvgPicture.asset(
                            Constants.ILLUSTRATION2,
                          ),
                        ),
                        Text(
                          "Log In",
                          style: headingTextStyle(context),
                        ),
                        Text(
                          "Enter your Safaricom phone number",
                          style: hintTextStyle(context),
                        ),
                        SB_3H,
                        CustomTextField(
                          textEditingController:
                              _phoneNumberTextEditingController,
                          hintText: "Phone Number",
                          labelText: "",
                          prefixIcon: const Icon(Icons.phone_android),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Column(
                          children: [
                            CustomButton(
                              title: "Login",
                              onPressed: () {
                                navigatorKey.currentState?.push(
                                  MaterialPageRoute(
                                    builder: (_) => const PinVerificationView(),
                                  ),
                                );
                              },
                              buttonHeight: HEIGHT_3,
                              dim: false,
                            ),
                            SB_1H,
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "Dont have have an account?",
                                      style: hintTextStyle(context)),
                                  TextSpan(
                                    text: "Sign Up",
                                    style: hintTextStyle(context)?.copyWith(
                                      color: PRIMARY_COLOR,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {},
                                  ),
                                ],
                              ),
                            ),
                            SB_1H,
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
