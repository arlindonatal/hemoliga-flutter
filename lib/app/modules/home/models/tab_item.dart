import 'package:flutter/material.dart';

import '../../../core/util/style.dart';

class TabItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSelected;
  final Function onTap;

  const TabItem({Key key, this.text, this.icon, this.isSelected, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(icon, color: isSelected ? Style.primary() : Style.light()),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
