import 'package:mobx/mobx.dart';

part 'others_store.g.dart';

class OthersStore = _OthersStoreBase with _$OthersStore;
abstract class _OthersStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}