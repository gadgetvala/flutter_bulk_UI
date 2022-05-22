import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:softwarelab/res/res.dart';

class InputFieldsCommon extends StatefulWidget {
  final String hintText;
  final int maxLength;
  final String? errorText;
  final TextEditingController controller;
  final bool isPasswordField;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType inputType;
  final bool enableInteractiveSelection;
  final double horizontalPadding;
  final double verticalPadding;
  final TextInputFormatter? formatter;

  const InputFieldsCommon({
    Key? key,
    required this.errorText,
    this.maxLength = 200,
    required this.hintText,
    required this.controller,
    this.enableInteractiveSelection = true,
    this.inputType = TextInputType.text,
    this.isPasswordField = false,
    this.suffixIcon,
    this.prefixIcon,
    this.horizontalPadding = 15.0,
    this.verticalPadding = 15.0,
    this.formatter,
  }) : super(key: key);

  @override
  InputFieldsCommonState createState() => InputFieldsCommonState();
}

class InputFieldsCommonState extends State<InputFieldsCommon> {
  bool showPassword = true;

  void setShowPassword() {
    setState(() => showPassword = !showPassword);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enableInteractiveSelection: widget.enableInteractiveSelection,
      maxLength: widget.maxLength,
      keyboardType: widget.inputType,
      controller: widget.controller,
      obscureText:
          widget.isPasswordField ? showPassword : widget.isPasswordField,
      style: const TextStyle(
        fontSize: 15,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        counterText: '',
        errorText: widget.errorText,
        filled: true,
        fillColor: colors.textFieldBackground,
        border: UnderlineInputBorder(borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colors.textFieldBackground),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colors.textFieldBackground),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          // borderSide: const BorderSide(color: Color(0xffD3DAE0)),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          // borderSide: const BorderSide(color: Color(0xffD3DAE0)),
          borderRadius: BorderRadius.circular(8),
        ),
        // suffixIcon: widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isPasswordField
            ? showPassword
                ? IconButton(
                    onPressed: setShowPassword,
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Color(0xff1A3045),
                    ),
                  )
                : IconButton(
                    onPressed: setShowPassword,
                    icon: const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Color(0xff1A3045),
                    ),
                  )
            : widget.suffixIcon,
        hintStyle: const TextStyle(color: Color(0xff929292)),
        hintText: widget.hintText,
        contentPadding: EdgeInsets.symmetric(
          horizontal: widget.horizontalPadding,
          vertical: widget.verticalPadding,
        ),
      ),
    );
  }
}
