import 'package:micro_app_login/app/pages/login.page.dart';
import 'package:micro_commons/app/eventbus/eventbus.implementation.dart';
import 'package:micro_core/micro_core.dart';

class MicroAPPLoginResolver implements MicroAPP {
  @override
  String get microAPPName => 'micro-app-login';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        '/login': (context, args) => const LoginPage(),
      };

  @override
  void Function() get createListener => () {
        EventbusImplementation.listen((event) {
          print('Evento escutado: $event');
        });
      };
}
