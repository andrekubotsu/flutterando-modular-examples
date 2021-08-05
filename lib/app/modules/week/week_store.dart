import 'package:mobx/mobx.dart';

part 'week_store.g.dart';

class WeekStore = _WeekStoreBase with _$WeekStore;
abstract class _WeekStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}