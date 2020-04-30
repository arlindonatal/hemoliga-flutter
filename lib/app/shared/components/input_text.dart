import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../core/util/form_util.dart';
import '../../core/util/style.dart';

class InputText extends StatelessWidget {
  final String title;
  final TextInputType keyboardType;
  final FocusNode focusNode;
  final FocusNode nextFocus;
  final Function validate;

  InputText(this.title,
      {this.keyboardType = TextInputType.text,
      this.focusNode,
      this.nextFocus,
      this.validate});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: TextFormField(
            focusNode: focusNode,
            keyboardType: keyboardType,
            validator: validate,
            textInputAction: TextInputAction.next,
            style: defaultHintTextStyle,
            decoration: InputDecoration(
              labelText: title,
            ),
            onFieldSubmitted: (_) {
              fieldFocusChange(context, focusNode, nextFocus);
            },
          ),
        ),
      ],
    ));
  }
}
