import 'package:flutter/widgets.dart';

import '../../core/util/style.dart';

class TitleDefault extends StatelessWidget {

  final String text;

  TitleDefault(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(text, style: defaultTitleStyle),
    );
  }
}
