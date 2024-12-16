class Competition {
  String image;
  String name;
  bool isSelected;

  Competition({required this.image, required this.name, required this.isSelected});
}

var mpl = Competition(image: "images/competitions/mpl.png", name: "MPL Indonesia", isSelected: true);
var m6 = Competition(image: "images/competitions/m6.png", name: "M6 World", isSelected: false);
var msc = Competition(image: "images/competitions/msc.png", name: "Mid Season Cup", isSelected: false);
var iesf = Competition(image: "images/competitions/iesf.png", name: "IESF World Esport", isSelected: false);
var competitions = [mpl, m6, msc, iesf];