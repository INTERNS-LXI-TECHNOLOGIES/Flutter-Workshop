import 'HerbiVorous.dart';
import 'Animal.dart';
import 'WeakAnimal.dart';

class Deer extends Animal implements Herbivorous, WeakAnimal {
  @override
  String printAnimalDetails() {
    String name = animalName;
    return name;
  }
}
