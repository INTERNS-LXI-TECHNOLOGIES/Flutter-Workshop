import 'HerbiVorous.dart';
import 'Animal.dart';

class Rabit extends Animal implements Herbivorous {
  @override
  void printnameOfAnimal() {
    print('Name is Rabit');
    printTypeofFoodEatByAanimal();
  }

  @override
  void printTypeofFoodEatByAanimal() {
    print('Rabit is a Wild Herbivorous Animal and eats grass and Vegitables');
  }
}
