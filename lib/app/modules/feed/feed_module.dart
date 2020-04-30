import 'package:flutter_modular/flutter_modular.dart';

import 'pages/feed_page.dart';

class FeedModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => FeedPage(), transition: TransitionType.rotate),
      ];

  static Inject get to => Inject<FeedModule>.of();
}
