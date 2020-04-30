import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../core/util/style.dart';

class ScrollBlock extends StatelessWidget {
  final String title;
  final Widget child;

  ScrollBlock(this.title, this.child);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(        
        headerSliverBuilder: (context, innerBoxScrolled) => [
          SliverAppBar(
              backgroundColor: Style.backgound(),
              expandedHeight: 100,
              elevation: 2,
              pinned: true,
              iconTheme: IconThemeData(color: Style.primary()),
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                  double heightDiff, percent, dx;
                  heightDiff = constraints.maxHeight - kToolbarHeight;
                  percent = ((heightDiff) * 100 / (150 - kToolbarHeight));
                  dx = 0;
                  dx = 100 - percent;
                  if (constraints.maxHeight == 100) {
                    dx = 0;
                  }
                  return Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: kToolbarHeight / 4, left: 0.0
                        ),
                        child: Transform.translate(
                          child: Text(title, style: defaultAppBarTitleStyle),
                          offset: Offset(dx, heightDiff),
                        ),
                      ),
                    ],
                  );
                },
              ))
        ],
        body: SingleChildScrollView(
          child: Container(
            color: Style.backgound(),
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
