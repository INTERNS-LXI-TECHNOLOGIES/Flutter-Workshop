import 'Animal.dart';
import 'Carnivorous.dart';

class Bear extends Animal implements Carnivorous {
  @override
  void printnameOfAnimal() {
    print('Name IS Bear');
    printTypeofFoodEatByAanimal();
  }

  @override
  void printTypeofFoodEatByAanimal() {
    print('Bear is a Wild Carnivour Animal and eats meat');
  }
}
