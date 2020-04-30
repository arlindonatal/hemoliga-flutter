import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/util/icons_hemoliga_icons.dart';
import '../../../core/util/style.dart';
import '../../donation/donation_module.dart';
import '../../feed/feed_module.dart';
import '../../hospital/hospitals_module.dart';
import '../../initial/initial_module.dart';
import '../controllers/home_controller.dart';
import '../models/tab_item.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Tabs"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPages(),
      floatingActionButton: _floatingButton(),
      bottomNavigationBar: _buildTabs(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildTabs() {
    return Observer(
      builder: (_) {
        return BottomAppBar(
          color: Style.backgound(),
          shape: CircularNotchedRectangle(),
          elevation: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TabItem(
                icon: IconsHemoliga.home,
                isSelected: controller.selectedPage == 0,
                onTap: () => controller.changePage(0),
              ),
              TabItem(
                icon: IconsHemoliga.feed,
                isSelected: controller.selectedPage == 1,
                onTap: () => controller.changePage(1),
              ),
              SizedBox(width: 48),
              TabItem(
                icon: IconsHemoliga.doacoes,
                isSelected: controller.selectedPage == 2,
                onTap: () => controller.changePage(2),
              ),
              TabItem(
                icon: IconsHemoliga.hemocentros,
                isSelected: controller.selectedPage == 3,
                onTap: () => controller.changePage(3),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPages() {
    return Observer(
      builder: (_) {
        return IndexedStack(
          index: controller.selectedPage,
          children: <Widget>[
            RouterOutlet(module: InitialModule()),
            RouterOutlet(module: FeedModule()),
            RouterOutlet(module: DonationModule()),
            RouterOutlet(module: HospitalModule()),
            Container(
              color: Style.backgound(),
            ),
          ],
        );
      },
    );
  }

  Widget _floatingButton() {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: ClipOval(
        child: Material(
          child: InkWell(
            onTap: () {
              print('Clicou!');
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Style.orange(), Style.primary()],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Icon(
                IconsHemoliga.adicionar,
                color: Style.foreground(),
                size: 36,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
