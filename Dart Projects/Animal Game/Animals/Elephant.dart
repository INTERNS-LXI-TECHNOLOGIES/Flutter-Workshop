import 'Animal.dart';
import 'HerbiVorous.dart';

class Elephant extends Animal implements Herbivorous {
  @override
  String printAnimalDetails() {
    String name = animalName;
    return name;
  }
}
