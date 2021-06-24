import 'Animal.dart';
import 'Carnivorous.dart';

class Bear extends Animal implements Carnivorous {
  @override
  String printAnimalDetails() {
    String name = animalName;
    return name;
  }

  void behaviourOfAnimal() {
    print('');
  }
}
