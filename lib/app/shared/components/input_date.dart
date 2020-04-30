import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/util/style.dart';

class InputDate extends StatefulWidget {
  final String title;
  InputDate(this.title, {Key key}) : super(key: key);

  @override
  _InputDateState createState() => _InputDateState(title);
}

class _InputDateState extends State<InputDate> {
  DateTime _date;
  final String title;

  _InputDateState(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: defaultLabelNormalStyle,
              ),
              DateTimeField(
                  format: DateFormat("dd/MM/yyyy"),
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Style.secondary(),
                        )
                      ),
                    hintText: 'dd/mm/aaaa',
                    hintStyle: defaultHintTextStyle,
                  ),
                  onShowPicker: (context, currentValue) {
                    return showDatePicker(
                        context: context,
                        initialDate: currentValue ?? DateTime.now(),
                        firstDate: 
                            DateTime.parse('${DateTime.now().year - 5}-01-01'),
                        lastDate: DateTime.now(),
                        locale: Locale('pt'));
                  },
                  onChanged: (date) => setState(() {
                    _date = date;
                    print('change $_date');
                  })),
            ],
          )),
    );
  }
}
