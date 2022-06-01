import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:karaoke/module/view/login.dart';
import 'package:karaoke/module/widgets/custom_button.dart';
import 'package:karaoke/module/widgets/custom_text_field.dart';
import 'package:karaoke/res/color.dart';
import 'package:karaoke/res/constants.dart';
import 'package:karaoke/res/globals.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController _firstNameTextEditingController =
          TextEditingController(),
      _lastNameTextEditingController = TextEditingController(),
      _phoneNumberTextEditingController = TextEditingController();

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: WIDTH_2,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SB_2H,
                Center(
                  child: SvgPicture.asset(
                    Constants.ILLUSTRATION1,
                  ),
                ),
                Text(
                  "Sign Up",
                  style: headingTextStyle(context),
                ),
                Text(
                  "First register your account and wnjoy it.",
                  style: hintTextStyle(context),
                ),
                SB_3H,
                CustomTextField(
                  textEditingController: _firstNameTextEditingController,
                  hintText: "First Name",
                  labelText: "",
                  prefixIcon: const Icon(Icons.person_outline),
                ),
                SB_1H,
                CustomTextField(
                  textEditingController: _lastNameTextEditingController,
                  hintText: "Last Name",
                  labelText: "",
                  prefixIcon: const Icon(Icons.person_outline),
                ),
                SB_1H,
                CustomTextField(
                  textEditingController: _phoneNumberTextEditingController,
                  hintText: "Phone Number",
                  labelText: "",
                  prefixIcon: const Icon(Icons.phone_android),
                ),
                SB_1H,
                Row(
                  children: [
                    Checkbox(
                      value: value,
                      onChanged: (_) {
                        setState(() {
                          value = _!;
                        });
                      },
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            value = !value;
                          });
                        },
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: "Review & accept our ",
                                  style: hintTextStyle(context)),
                              TextSpan(
                                text: "privacy policy ",
                                style: hintTextStyle(context)?.copyWith(
                                  color: PRIMARY_COLOR,
                                ),
                              ),
                              TextSpan(
                                text: "and",
                                style: hintTextStyle(context),
                              ),
                              TextSpan(
                                text: " terms and conditions",
                                style: hintTextStyle(context)?.copyWith(
                                  color: PRIMARY_COLOR,
                                ),
                              ),
                              TextSpan(
                                  text: " to complete registration.",
                                  style: hintTextStyle(context)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SB_3H,
                CustomButton(
                  title: "Sign Up",
                  onPressed: () {
                    navigatorKey.currentState?.push(
                      MaterialPageRoute(
                        builder: (_) => LoginView(),
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
                          text: "Already member yet?",
                          style: hintTextStyle(context)),
                      TextSpan(
                        text: "Login ",
                        style: hintTextStyle(context)?.copyWith(
                          color: PRIMARY_COLOR,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            navigatorKey.currentState?.push(
                              MaterialPageRoute(
                                builder: (_) => LoginView(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
                SB_1H,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
