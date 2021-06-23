import 'Animal.dart';
import 'Carnivorous.dart';

class Tiger extends Animal implements Carnivorous {
  @override
  String printAnimalDetails() {
    String name = animalName;
    return name;
  }
}
