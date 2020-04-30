import 'package:flutter/material.dart';

import '../../core/util/style.dart';

class InputSelect extends StatefulWidget {

  final String title;
  final List<DropdownMenuItem<dynamic>> items;
  
  InputSelect(this.title, {this.items, Key key}) : super(key: key);

  @override
  _InputSelectState createState() => _InputSelectState();
}

class _InputSelectState extends State<InputSelect> {

  var _value;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.0),
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: DropdownButtonFormField(
                value: _value,
                items: widget.items,
                style: defaultLabelStyle,
                decoration: InputDecoration(
                  labelText: widget.title,
                ),
                onChanged: (selectedValue) {
                  setState(() {
                    _value = selectedValue;
                  });
                }
              )
            ),
          ],
        )
      ),
    );
  }
}