import 'package:flutter/material.dart';

import '../../../shared/components/header.dart';

class DonationPage extends StatefulWidget {
  final String title;
  const DonationPage({Key key, this.title = "Donation"}) : super(key: key);

  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header('Histórico do\nDoador', showButtons: false),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [],
              )
            ],
          ),
        )
      ],
    );
  }
}
