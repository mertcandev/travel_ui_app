class DetailModel {
  String? imgPath;
  String? name;
  String? location;
  String? description;
  String? price;
  DetailModel({
    this.imgPath,
    this.name,
    this.location,
    this.description,
    this.price
  });
}

final List<DetailModel> details = [
  DetailModel(
    imgPath: "assets/regnum.jpg",
    name: "Regnum Carya",
    location: "Serik",
    description:
        'To leave lasting memories in the lives of our guests with our service approach that exceeds expectations by offering luxury combined with elegance, simplicity and nature amidst the tranquil and pleasant settings created for our guests of all ages and different cultures.',
        price: "400",
  ),
  DetailModel(
    imgPath: "assets/mahal.jpg",
    name: "Villa Mahal",
    location: "Kaş",
    description:
        'A sophisticated boutique hotel nestling on a hillside in Kalkan Bay. Each step you take offers a picture perfect view of the Lycian Coast and divine Turkish Mediterranean... Offers 13 rooms and suites each with unique personality and two elegant villas.',
        price: "350",
  ),
  DetailModel(
    imgPath: "assets/rixos.jpg",
    name: "Rixos Downtown",
    location: "Antalya",
    description:
        'Rixos Downtown Antalya offers guests a fabulous juxtaposition; an urban resort in the centre of Antalya where city and nature collide. With views over the Mediterranean Sea and the Taurus Mountains, the picturesque setting of the Rixos Downtown Antalya makes it a natural choice for anyone seeking rich and varied culture in a resort setting.',
        price: "450",
  )
];
