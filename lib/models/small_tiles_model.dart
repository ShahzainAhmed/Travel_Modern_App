import 'package:travel_app/resources/app_assets.dart';

class SmallTilesModel {
  final String title;
  final String subtitle;
  final String image;
  final String price;
  final String persons;
  final String description;

  SmallTilesModel({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.price,
    required this.persons,
    required this.description,
  });
}

List smallTilesList = [
  SmallTilesModel(
    title: "Bangkok",
    subtitle: "Phuket",
    image: AppAssets.picture1,
    price: "\$599",
    persons: "2 Person",
    description:
        "Bangkok is for relaxation. So it's perfectly normal to want to spend a few days by the pool in peace and quiet. There's a reason adults-only resorts are so popular - not only do guests have to be a certain age to stay there.",
  ),
  SmallTilesModel(
    title: "Bangkok",
    subtitle: "Krabi",
    image: AppAssets.picture2,
    price: "\$499",
    persons: "4 Person",
    description:
        "Krabi is for relaxation. So it's perfectly normal to want to spend a few days by the pool in peace and quiet. There's a reason adults-only resorts are so popular - not only do guests have to be a certain age to stay there.",
  ),
  SmallTilesModel(
    title: "Maldives",
    subtitle: "Island",
    image: AppAssets.picture3,
    price: "\$399",
    persons: "2 Person",
    description:
        "Maldives is for relaxation. So it's perfectly normal to want to spend a few days by the pool in peace and quiet. There's a reason adults-only resorts are so popular - not only do guests have to be a certain age to stay there.",
  ),
  SmallTilesModel(
    title: "Bangkok",
    subtitle: "Krabi",
    image: AppAssets.picture2,
    price: "\$799",
    persons: "7 Person",
    description:
        "Krabi is for relaxation. So it's perfectly normal to want to spend a few days by the pool in peace and quiet. There's a reason adults-only resorts are so popular - not only do guests have to be a certain age to stay there.",
  ),
];
