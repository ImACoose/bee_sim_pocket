abstract class Item {
  String name;
  String description;

  Item({required this.name, required this.description});
}

class Treat extends Item {
  int bondAmount;

  Treat(
      {required super.name,
      required super.description,
      required this.bondAmount});
}
