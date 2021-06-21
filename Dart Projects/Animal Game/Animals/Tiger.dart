import 'Animal.dart';
import 'Carnivorous.dart';

class Tiger extends Animal implements Carnivorous {
  @override
  void printnameOfAnimal() {
    print('Name Of animal is Tiger');
    printTypeofFoodEatByAanimal();
  }

  @override
  void printTypeofFoodEatByAanimal() {
    print('Tiger is a Wild Carnivour Animal and eats meat');
  }
}
