import 'package:flutter/material.dart';

import '../../res/globals.dart';

class CustomTextField extends StatefulWidget {
  final bool isReadable;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChange;
  final ValueChanged<String>? onSubmitted;
  final FormFieldValidator<String>? onValidator;
  final Widget? suffixIcon;
  final TextEditingController? textEditingController;
  final String? hintText;
  final bool obsecure;
  final bool isPasswordText;
  final int maxLines;
  final Widget? prefixIcon;
  final TextInputType? textInputType;
  final bool? isFormField;
  final String? labelText;

  const CustomTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    this.obsecure = false,
    this.isPasswordText = false,
    this.maxLines = 1,
    this.isReadable = false,
    this.prefixIcon,
    this.textInputType,
    this.onChange,
    this.onTap,
    this.isFormField = false,
    this.suffixIcon,
    this.onSubmitted,
    this.onValidator,
    required this.labelText,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          color: Colors.grey[200]),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaleFactor: 1,
          ),
          child: !widget.isFormField!
              ? TextField(
                  controller: widget.textEditingController,
                  maxLines: widget.maxLines,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    hintStyle: hintTextStyle(context),
                    hintText: widget.hintText,
                    border: InputBorder.none,
                    alignLabelWithHint: true,
                    labelStyle: hintTextStyle(context),
                    labelText:
                        widget.labelText!.isEmpty ? null : widget.labelText,
                    prefixIconConstraints: BoxConstraints(
                      maxHeight: defaultSize.screenWidth * .08,
                      maxWidth: defaultSize.screenWidth * .08,
                    ),
                    suffixIconConstraints: BoxConstraints(
                      maxHeight: defaultSize.screenWidth * .08,
                      maxWidth: defaultSize.screenWidth * .08,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: defaultSize.screenHeight * .02,
                      horizontal: defaultSize.screenWidth * .05,
                    ),
                    isDense: true,
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(
                          left: widget.prefixIcon == null
                              ? defaultSize.screenWidth * .05
                              : defaultSize.screenWidth * .03,
                        ),
                        child: widget.prefixIcon ?? const SizedBox()),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(
                          right: widget.suffixIcon == null
                              ? defaultSize.screenWidth * .05
                              : defaultSize.screenWidth * .03,
                          left: widget.suffixIcon == null
                              ? defaultSize.screenWidth * .05
                              : defaultSize.screenWidth * .03),
                      child: widget.suffixIcon ?? const SizedBox(),
                    ),
                  ),
                  onSubmitted: (_) {
                    if (widget.onSubmitted != null) {
                      widget.onSubmitted!(_);
                    }
                  },
                  onTap: () {
                    if (widget.onTap != null) {
                      widget.onTap!();
                    }
                  },
                  keyboardType: widget.textInputType ?? TextInputType.text,
                  readOnly: widget.isReadable,
                  onChanged: (_) {
                    setState(() {});
                    if (widget.onChange != null) {
                      widget.onChange!(_);
                    }
                  },
                  obscureText: widget.obsecure ? widget.obsecure : false,
                  style: labelTextStyle(context),
                )
              : TextFormField(
                  controller: widget.textEditingController,
                  maxLines: widget.maxLines,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    hintStyle: hintTextStyle(context),
                    hintText: widget.hintText,
                    border: InputBorder.none,
                    alignLabelWithHint: true,
                    labelStyle: hintTextStyle(context),
                    labelText: widget.labelText,
                    prefixIconConstraints: BoxConstraints(
                      maxHeight: defaultSize.screenWidth * .08,
                      maxWidth: defaultSize.screenWidth * .08,
                    ),
                    suffixIconConstraints: BoxConstraints(
                      maxHeight: defaultSize.screenWidth * .08,
                      maxWidth: defaultSize.screenWidth * .08,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: defaultSize.screenHeight * .02,
                      horizontal: defaultSize.screenWidth * .02,
                    ),
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(
                          left: widget.prefixIcon == null
                              ? defaultSize.screenWidth * .03
                              : defaultSize.screenWidth * .03,
                        ),
                        child: widget.prefixIcon ?? const SizedBox()),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(
                          right: widget.suffixIcon == null
                              ? defaultSize.screenWidth * .05
                              : defaultSize.screenWidth * .03,
                          left: widget.suffixIcon == null
                              ? defaultSize.screenWidth * .05
                              : defaultSize.screenWidth * .03),
                      child: widget.suffixIcon ?? const SizedBox(),
                    ),
                  ),
                  validator: widget.onValidator,
                  onTap: () {
                    if (widget.onTap != null) {
                      widget.onTap!();
                    }
                  },
                  keyboardType: widget.textInputType ?? TextInputType.text,
                  readOnly: widget.isReadable,
                  onChanged: (_) {
                    setState(() {});
                    if (widget.onChange != null) {
                      widget.onChange!(_);
                    }
                  },
                  obscureText: widget.obsecure ? widget.obsecure : false,
                  style: labelTextStyle(context),
                ),
        ),
      ),
    );
  }
}
