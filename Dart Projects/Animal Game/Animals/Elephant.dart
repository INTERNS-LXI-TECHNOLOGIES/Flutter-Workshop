import 'Animal.dart';
import 'HerbiVorous.dart';

class Elephant extends Animal implements Herbivorous {
  @override
  void printnameOfAnimal() {
    print('Name of Animal is Elephant');
    printTypeofFoodEatByAanimal();
  }

  @override
  void printTypeofFoodEatByAanimal() {
    print('Elephant is a Wild Herbivorous Animal and eats Grass');
  }
}
