class Tyre {
  var _tyreSize;
  var _tyreName;
  var frontTyre1;
  var tyreslist = <Tyre>[];

  set tyreName(String tyreName) => _tyreName = tyreName;
  String get tyreName => _tyreName;

  set tyreSize(String tyreSize) => _tyreSize = tyreSize;
  String get tyreSize => _tyreSize;

  Tyre(this._tyreSize, this._tyreName);

  void setList(List<Tyre> tyres) => tyreslist = tyres;

  void printTyre1details() {
    print('Details of FrontTyre 1 their size and tyre is Printing: ');
    print(tyreslist.elementAt(0));
  }

  void printTyre2details() {
    print('Details of FrontTyre 1 their size and tyre is Printing: ');
    print(tyreslist.elementAt(1));
  }

  void printTyre3details() {
    print('Details of FrontTyre 1 their size and tyre is Printing: ');
    print(tyreslist.elementAt(2));
  }

  void printTyre4details() {
    print('Details of FrontTyre 1 their size and tyre is Printing: ');
    print(tyreslist.elementAt(4));
  }
}
