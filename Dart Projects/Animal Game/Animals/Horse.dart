import 'HerbiVorous.dart';
import 'Animal.dart';
import 'WeakAnimal.dart';

class Horse extends Animal implements Herbivorous, WeakAnimal {
  @override
  String printAnimalDetails() {
    String name = animalName;
    return name;
  }
}
