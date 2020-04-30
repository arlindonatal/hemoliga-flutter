import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../core/util/form_util.dart';
import '../../core/util/style.dart';

class InputPassword extends StatefulWidget {
  final String title;
  final TextInputType keyboardType;
  final FocusNode focusNode;
  final FocusNode nextFocus;
  final Function validate;

  InputPassword(
    this.title, {
    this.keyboardType = TextInputType.text,
    this.focusNode,
    this.nextFocus,
    this.validate,
  });

  @override
  _InputPasswordState createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: TextFormField(
            focusNode: widget.focusNode,
            obscureText: passwordVisible,
            keyboardType: widget.keyboardType,
            validator: widget.validate,
            textInputAction: TextInputAction.next,
            style: defaultHintTextStyle,
            decoration: InputDecoration(
              labelText: widget.title,
              suffixIcon: IconButton(
                icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).primaryColorDark,
                ),
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
            ),
            onFieldSubmitted: (_) {
              fieldFocusChange(context, widget.focusNode, widget.nextFocus);
            },
          ),
        ),
      ],
    ));
  }
}
