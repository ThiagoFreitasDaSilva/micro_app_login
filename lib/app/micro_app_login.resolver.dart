import 'package:micro_app_login/app/pages/login.page.dart';
import 'package:micro_core/app/micro_app.dart';
import 'package:micro_core/micro_core.dart';

class MicroAPPLoginResolver implements MicroAPP {
  @override
  String get microAPPName => 'micro-app-login';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        '/login': (context, args) => const LoginPage(),
      };
}
