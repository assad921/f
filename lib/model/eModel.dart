class Coffee {
  final String name;
  final String type;
  final String shortDesc;
  final String desc;
  final String image;
  final int rate;
  final int price;

  Coffee(
      {this.name,
      this.type,
      this.shortDesc,
      this.desc,
      this.image,
      this.rate,
      this.price});
}

List<Coffee> menu = [
  Coffee(
      name: "MBS",
      type: 'service',
      shortDesc: "Vehicle Body Shop Grand Workshop",
      desc:
          "This center specializes in repairing accident damage to all vehicles using the vehicle's wheel-tuning equipment and wheels",
      image: "assets/1.jpeg",
      rate: 5,
      price: 200),
  Coffee(
      name: "MBS",
      type: "service",
      shortDesc: "Commercial Section.",
      desc:
          "The mall and manufacturing department offer everything from accident repairs to repair services.",
      image: "assets/2.jpeg",
      rate: 5,
      price: 200),
  Coffee(
      name: "MBS",
      type: "service",
      shortDesc: "Modification section",
      desc:
          "This section adjusts the vehicle to the customer's desire, to suit all models.",
      image: "assets/3.jpeg",
      rate: 5,
      price: 120),

];
