import 'package:flutter/material.dart';

import '../../core/util/style.dart';

class ButtonSecondary extends StatelessWidget {
  final String title;
  final Function action;

  const ButtonSecondary(this.title, {this.action, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: action,
        elevation: 5.0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80.0),
          side: BorderSide(color: Style.primary()),
        ),
        padding: EdgeInsets.all(0.0),
        child: Container(
          constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
          alignment: Alignment.center,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Style.primary(),
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            ),
          ),
        ),
      ),
    );
  }
}
