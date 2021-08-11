import 'package:flutterando_modular/app/modules/others/others_page.dart';
import 'package:flutterando_modular/app/modules/others/others_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OthersModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => ControllerAnotherModule(
        i())), // pede a injeção de uma string, mas ela vem de outro modulo
    // dessa maneira, a string requerida vem do parent (app_modules)

    Bind.singleton((i) => ControllerAnotherModuleToModule(i(), i())),

    Bind.singleton((i) => OthersStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => OthersPage()),
  ];
}

class ControllerAnotherModule {
  final String name;
  ControllerAnotherModule(this.name);

  printText() {
    print('Name: $name');
  }
}

class ControllerAnotherModuleToModule {
  final String name;
  final bool isInjected;

  ControllerAnotherModuleToModule(this.name, this.isInjected);

  printText() {
    print('Name: $name');
  }
}
