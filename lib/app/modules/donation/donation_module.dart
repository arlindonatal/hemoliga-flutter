import 'package:flutter_modular/flutter_modular.dart';

import 'pages/donation_page.dart';

class DonationModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => DonationPage(),
            transition: TransitionType.rotate),
      ];

  static Inject get to => Inject<DonationModule>.of();
}
