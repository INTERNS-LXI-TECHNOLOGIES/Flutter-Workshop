import 'HerbiVorous.dart';
import 'Animal.dart';

class Horse extends Animal implements Herbivorous {
  @override
  void printnameOfAnimal() {
    print('Name of Animal is Horse');
    printTypeofFoodEatByAanimal();
  }

  @override
  void printTypeofFoodEatByAanimal() {
    print('Horse is a Wild Herbivorous Animal and eats grass');
  }
}
