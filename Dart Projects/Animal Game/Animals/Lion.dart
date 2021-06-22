import 'Animal.dart';
//import 'Carnivorous.dart';

class Lion extends Animal {
  @override
  void printnameOfAnimal() {
    print('Name of Animal is Lion');
    printTypeofFoodEatByAanimal();
  }

  @override
  void printTypeofFoodEatByAanimal() {
    print('Lion is a Wild Carnivour Animal and eats meat');
  }
}
