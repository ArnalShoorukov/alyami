import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service({this.id, this.title, this.image, this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Transformer",
    image: "assets/images/transformer.jpg",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Unit Sub-Station (USS)",
    image: "assets/images/uss.png",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "Ring main Unit (RMU)",
    image: "assets/images/rmu.jpg",
    color: Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "On-site services",
    image: "assets/images/on_site_service.jpg",
    color: Color(0xFFFDFFB6),
  ),
  Service(
    id: 5,
    title: "Powder Coating",
    image: "assets/images/powder_cowding.jpg",
    color: Color(0xFFFFD6A5),
  ),
  Service(
    id: 6,
    title: "Industrial Oven",
    image: "assets/images/industrial_oven.jpg",
    color: Color(0xFFFFED3E0),
  ),
  Service(
    id: 7,
    title: "Sand Blasting",
    image: "assets/images/sandblasting.jpg",
    color: Color(0xFFA0C4FF),
  ),
];
