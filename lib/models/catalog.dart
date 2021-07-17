class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "Codepur001",
      name: "Iphone 12 pro",
      desc: "Apple Iphone 12 Generation ",
      price: 999,
      color: "#335051",
      image: "")
];
