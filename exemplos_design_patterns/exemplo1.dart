//=======================
// Example with 2 layers
//=======================

abstract class IRepository {} // interface

class RepositoryHttp implements IRepository {}

class RepositoryDio implements IRepository {}

class Controller {
  final IRepository repository;

  Controller(this.repository);
}

final controller = Controller(RepositoryHttp()); // dependency injection
final controller2 = Controller(RepositoryDio());

//===========================
// Example using composition
//===========================
class Controller2 {
  final IRepository repository = RepositoryDio(); // instance of RepositoryDio
  // in this case it is still respecting SOLID, however it is not easy to make changes
  // constructor empty, not used
}
