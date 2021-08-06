import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando_modular/app/app_module.dart';
import 'package:flutterando_modular/app/modules/others/others_module.dart';

void main() {
  initModules([AppModule(), OthersModule()]); // declara para o teste entender

  test('Get Controller - factory', () {
    final controller = Modular.get<Controller>();
    final controller2 = Modular.get<Controller>();
    // duas instancias diferentes a cada chamada
    print(controller.hashCode); // para mostrar o que é cada um
    print(controller2.hashCode);
  });

  test('Get Controller - singleton', () {
    final controller = Modular.get<ControllerSingleton>();
    final controller2 = Modular.get<ControllerSingleton>();
    // a mesma instância é chamada nas duas chamadas
    print(controller.hashCode); // para mostrar o que é cada um
    print(controller2.hashCode);
  });

  test('Get Controller - lazySingleton', () {
    final controller = Modular.get<ControllerLazySingleton>();
    final controller2 = Modular.get<ControllerLazySingleton>();
    // a mesma instância é chamada nas duas chamadas, mas só inicia quando chamado
    print(controller.hashCode); // para mostrar o que é cada um
    print(controller2.hashCode);
  });

  test('Get Controller - instance', () {
    final controller = Modular.get<Controller>();
    final name = Modular.get<String>();
    //
    print(controller.hashCode); // para mostrar o que é cada um
    print(name);
  });

  test('Get Controller - Dependency Injection Example', () {
    final controller = Modular.get<DependencyInjectionExample>();

    controller.printText(); // para mostrar o que é cada um
  });

  test('Get Controller - Parent -> Child', () {
    // por causa da hierarquia, a instancia 'name' vem do app_module para o other_module
    final controller = Modular.get<ControllerAnotherModule>();
    controller.printText(); // para mostrar o que é cada um
  });

  test('Get Controller - Parent -> Child <-> Child', () {
    // por causa da hierarquia, a instancia 'name' vem do app_module para o other_module
    final controller = Modular.get<ControllerAnotherModuleToModule>();
    controller.printText(); // para mostrar o que é cada um
  });
}
