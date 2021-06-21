import 'dart:math';
import 'Animals/Lion.dart';
import 'Animals/animal.dart';

class Forest {
  List<Animal> animals = [];
  Lion lion = Animal();
  //Random random = Random();

  void generateAnimals() {
    int numberofAnimals = Random().nextInt(10);
    animals.add(new Lion());
  }
}
