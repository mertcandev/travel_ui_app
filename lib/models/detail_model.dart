class DetailModel {
  String? imgPath;
  String? name;
  String? location;
  String? description;
  DetailModel({
    this.imgPath,
    this.name,
    this.location,
    this.description,
  });
}

final List<DetailModel> details = [
  DetailModel(
    imgPath: "assets/regnum.jpg",
    name: "Regnum Carya",
    location: "Serik",
    description:
        'Ea non tempor et laborum proident laborum aliquip tempor aliquip excepteur aliqua culpa in eu. Dolore commodo eu velit commodo id id. Labore proident velit occaecat reprehenderit ullamco aliqua reprehenderit exercitation. nostrud mollit amet. Pariatur deserunt amet exercitation duis.',
  ),
  DetailModel(
    imgPath: "assets/mahal.jpg",
    name: "Villa Mahal",
    location: "Kaş",
    description:
        'Ea non tempor et laborum proident laborum aliquip tempor aliquip excepteur aliqua culpa in eu. Dolore commodo eu velit commodo id id. Labore proident velit occaecat reprehenderit ullamco aliqua reprehenderit exercitation. nostrud mollit amet. Pariatur deserunt amet exercitation duis.',
  ),
  DetailModel(
    imgPath: "assets/rixos.jpg",
    name: "Rixos Premium",
    location: "Antalya",
    description:
        'Ea non tempor et laborum proident laborum aliquip tempor aliquip excepteur aliqua culpa in eu. Dolore commodo eu velit commodo id id. Labore proident velit occaecat reprehenderit ullamco aliqua reprehenderit exercitation. nostrud mollit amet. Pariatur deserunt amet exercitation duis.',
  )
];
