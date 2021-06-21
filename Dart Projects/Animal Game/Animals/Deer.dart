import 'HerbiVorous.dart';
import 'Animal.dart';

class Deer extends Animal implements Herbivorous {
  @override
  void printnameOfAnimal() {
    print('Name of Animal is Dear');
    printTypeofFoodEatByAanimal();
  }

  @override
  void printTypeofFoodEatByAanimal() {
    print('Deer is a Wild Herbivour Animal and eats Grass');
  }
}
