import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../core/util/style.dart';
import '../../domain/entities/blood_type.dart';

class BloodSelect extends StatefulWidget {
  @override
  _BloodSelectState createState() => _BloodSelectState();
}

class _BloodSelectState extends State<BloodSelect> {
  List<bool> isSelected = List.generate(8, (_) => false);
  int _bloodType = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Tipo Sanguíneo',
            style: TextStyle(fontSize: 13, color: Style.secondary()),
          ),
          Container(
            alignment: Alignment.center,
            child: Wrap(spacing: 30.0, children: choices),
          )
        ],
      ),
    );
  }

  List<Widget> get choices {
    List<Widget> choices = [];
    BloodType.getAll().forEach((item) {
      choices.add(ChoiceChip(
        elevation: 4,
        padding: EdgeInsets.all(5.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        label: Text(
          item.name,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        selected: _bloodType == item.id,
        onSelected: (selected) {
          setState(() {
            _bloodType = item.id;
            print(_bloodType);
          });
        },
      ));
    });

    return choices;
  }
}
