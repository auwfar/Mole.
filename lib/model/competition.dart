class Competition {
  String image;
  String name;
  bool isSelected;

  Competition({required this.image, required this.name, required this.isSelected});
}

var competitions = [
  Competition(image: "images/mpl.png", name: "MPL Indonesia", isSelected: true),
  Competition(image: "images/m6.png", name: "M6 World", isSelected: false),
  Competition(image: "images/msc.png", name: "Mid Season Cup", isSelected: false),
  Competition(image: "images/iesf.png", name: "IESF World Esport", isSelected: false)
];