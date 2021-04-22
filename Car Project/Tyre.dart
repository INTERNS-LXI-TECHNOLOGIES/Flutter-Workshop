import 'dart:io';
interface Tyre 
{

  String _tyreName;
  String _tyreSize;

    void set tyreName(String name)=> _tyreName;
    String get tyreName =>_tyreName;

    void set tyreSize(String tyreSize)=> _tyreSize;
    String get tyreSize => _tyreSize;
}