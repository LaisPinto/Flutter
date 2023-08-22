import 'package:flutter_modular/flutter_modular.dart';
import 'features/home/_export_home.dart';

class AppModule extends Module {
  @override
    void binds(Injector i) {
    }

    @override
  void routes(RouteManager r) {
    r.child('/',
      child: (context) =>const MyHomePage(title: 'Flutter modular'));
    //RouterOutlet
    r.child('/screen1',
      child: (context) => const Screen1Page(),
      children: [
        ChildRoute('/internal_page_a',
          child: (context) => const Screen1InternalPageA(),
        ),
        ChildRoute('/internal_page_b',
          child: (context) => const Screen1InternalPageB(),
        ),
        ChildRoute('/internal_page_c',
          child: (context) => const Screen1InternalPageC(),
        ),
      ]
    );
    r.child('/screen2',
      child: (context) =>  Screen2Page(person: r.args.data,));

    r.wildcard(child: (context) =>  const ScreenNotFoundPage(),);
  }
}