import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../domain/entities/gender.dart';

void fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}

List<DropdownMenuItem<Gender>> genderList() {
  List<DropdownMenuItem<Gender>> items = [];
  items.add(
      DropdownMenuItem(value: Gender.MALE, child: Text(Gender.MALE.label)));
  items.add(
      DropdownMenuItem(value: Gender.FEMALE, child: Text(Gender.FEMALE.label)));
  return items;
}
