import 'package:flutterando_modular/app/modules/others/others_page.dart';
import 'package:flutterando_modular/app/modules/others/others_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OthersModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => OthersStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => OthersPage()),
  ];
}
