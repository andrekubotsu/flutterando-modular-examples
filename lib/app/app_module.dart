import 'package:flutter_modular/flutter_modular.dart';
//import 'package:flutterando_modular/app/modules/auth/auth_module.dart';
//import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => Controller()),
    Bind.singleton((i) => ControllerSingleton()),
    Bind.lazySingleton((i) => ControllerLazySingleton()),
    Bind.instance<String>('João'), // poder instancia de um serviço
    Bind.singleton((i) => DependencyInjectionExample(i()))
  ];

//   @override
//   final List<ModularRoute> routes = [
//     //ModuleRoute(Modular.initialRoute, module: HomeModule()),
//     //ModuleRoute('/auth', module: AuthModule()),
//   ];
// }
}

class Controller {
  printText() {
    print('print controller');
  }
}

class ControllerSingleton {
  printText() {
    print('print controllerSingleton');
  }
}

class ControllerLazySingleton {
  printText() {
    print('print controllerLazySingleton');
  }
}

class DependencyInjectionExample {
  final String name;

  DependencyInjectionExample(this.name);

  printText() {
    print('Name: $name');
  }
}
