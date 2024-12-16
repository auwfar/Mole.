class Competition {
  String image;
  String name;
  bool isSelected;

  Competition({required this.image, required this.name, required this.isSelected});
}

var mpl = Competition(image: "images/mpl.png", name: "MPL Indonesia", isSelected: true);
var m6 = Competition(image: "images/m6.png", name: "M6 World", isSelected: false);
var msc = Competition(image: "images/msc.png", name: "Mid Season Cup", isSelected: false);
var iesf = Competition(image: "images/iesf.png", name: "IESF World Esport", isSelected: false);
var competitions = [mpl, m6, msc, iesf];