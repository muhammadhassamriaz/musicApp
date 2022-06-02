import '../../package/route.dart';

class PinVerificationView extends StatelessWidget {
  const PinVerificationView({Key? key}) : super(key: key);

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
                        Text(
                          "Enter OTP",
                          style: headingTextStyle(context),
                        ),
                        Text(
                          "Enter the four digit code SMS sent\nto your phone number",
                          style: hintTextStyle(context),
                          textAlign: TextAlign.center,
                        ),
                        SB_3H,
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: WIDTH_5,
                          ),
                          child: PinCodeTextField(
                            appContext: context,
                            length: 4,
                            blinkWhenObscuring: true,
                            animationType: AnimationType.fade,
                            onChanged: (value) {},
                            onCompleted: (value) {
                              navigatorKey.currentState?.pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: (_) => const MainView(),
                                  ),
                                  (route) => false);
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please fill the fields.";
                              } else if (value.length < 6) {
                                return "Please enter your pin.";
                              }
                            },

                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BORDER_CIRCULAR_RADIUS,
                              selectedColor: PRIMARY_COLOR,
                              activeFillColor: PIN_FIELD_COLOR,
                              inactiveFillColor: PIN_FIELD_COLOR,
                              activeColor: PIN_FIELD_COLOR,
                              disabledColor: PIN_FIELD_COLOR,
                              inactiveColor: PIN_FIELD_COLOR,
                              selectedFillColor: PIN_FIELD_COLOR,
                              fieldHeight: defaultSize.screenHeight * .08,
                              fieldWidth: defaultSize.screenHeight * .06,
                            ),
                            // backgroundColor: PIN_FIELD_COLOR,
                            enableActiveFill: true,
                            cursorColor: PRIMARY_COLOR,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        SB_1H,
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: "Didn’t recieve the OTP ?",
                                  style: hintTextStyle(context)),
                              TextSpan(
                                text: "\nResend OTP?",
                                style: buttonTextStyle(context)?.copyWith(
                                  color: PRIMARY_COLOR,
                                  fontWeight: FontWeight.normal,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pop(context);
                                  },
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Column(
                          children: [
                            CustomButton(
                              title: "Verify",
                              onPressed: () {
                                navigatorKey.currentState?.pushAndRemoveUntil(
                                    MaterialPageRoute(
                                      builder: (_) => const MainView(),
                                    ),
                                    (route) => false);
                              },
                              buttonHeight: HEIGHT_3,
                              dim: false,
                            ),
                            SB_1H,
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "Back to ",
                                      style: hintTextStyle(context)),
                                  TextSpan(
                                    text: "Login",
                                    style: hintTextStyle(context)?.copyWith(
                                      color: PRIMARY_COLOR,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pop(context);
                                      },
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
