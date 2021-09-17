import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class InputField extends StatelessWidget {
  final String msg;
  final Function func;
  final bool pass;
  final TextInputType keyboard;
  final Widget icon;
  const InputField(
      {Key key,
      this.msg,
      this.func,
      this.pass = false,
      this.keyboard = TextInputType.text,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: this.keyboard,
      obscureText: this.pass,
      onChanged: this.func,
      decoration: kInputFieldDec.copyWith(
        hintText: msg,
        prefixIcon: icon,
      ),
    );
  }
}
