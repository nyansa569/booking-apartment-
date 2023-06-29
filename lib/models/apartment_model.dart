class ApartmentModel {
  ApartmentModel({
    required this.images,
    required this.name,
    required this.price,
    required this.reviewCount,
    required this.sizeDesc,
    required this.features,
    this.sizeLivingRoom = 0,
    this.sizeBedRoom = 0,
    this.sizeBathRoom = 0,
    this.desc = '',
  });
  final int price;
  final String images;
  final String sizeDesc;
  final double reviewCount;
  final String name;
  final List features;
  late int sizeLivingRoom;
  late int sizeBedRoom;
  late int sizeBathRoom;
  late String desc;

  static List list = [
    ApartmentModel(
      images: "apartment`",
      name: "Trasaco",
      price: 50,
      reviewCount: 1.2,
      sizeDesc: "Double family house",
      features: ["AC", "Wifi", "Pool"],
      sizeLivingRoom: 80,
      sizeBathRoom: 80,
      desc:
          "Great Location in historic Ghanaian Park, just minutes from Nyady State University, College for Creative Studies, Accra Medical Center, and Henry Ford Health System. Walk to stadium, theaters and shopping. Centrally located between Downtown and Midtown",
      sizeBedRoom: 80,
    ),
    ApartmentModel(
      images: "apartment1",
      name: "Vilagio",
      price: 45,
      reviewCount: 6.0,
      features: ["AC", "Wifi", "Pool"],
      sizeDesc: "Double family house",
      sizeBathRoom: 70,
      sizeBedRoom: 80,
      sizeLivingRoom: 90,
      desc:
          "Great Location in historic Ghanaian Park, just minutes from Nyady State University, College for Creative Studies, Accra Medical Center, and Henry Ford Health System. Walk to stadium, theaters and shopping. Centrally located between Downtown and Midtown",
    ),
    ApartmentModel(
      images: "apartment2",
      name: "Mawako",
      price: 20,
      reviewCount: 1,
      features: ["AC", "Wifi", "Pool"],
      sizeLivingRoom: 78,
      sizeBathRoom: 90,
      desc:
          "Great Location in historic Ghanaian Park, just minutes from Nyady State University, College for Creative Studies, Accra Medical Center, and Henry Ford Health System. Walk to stadium, theaters and shopping. Centrally located between Downtown and Midtown",
      sizeBedRoom: 80,
      sizeDesc: "Double family house",
    ),
    ApartmentModel(
      images: "apartment3",
      name: "Peduase Lougue",
      price: 10,
      reviewCount: 1.2,
      features: ["AC", "Wifi", "Pool"],
      sizeLivingRoom: 100,
      sizeBathRoom: 90,
      sizeBedRoom: 80,
      desc:
          "Great Location in historic Ghanaian Park, just minutes from Nyady State University, College for Creative Studies, Accra Medical Center, and Henry Ford Health System. Walk to stadium, theaters and shopping. Centrally located between Downtown and Midtown",
      sizeDesc: "Double family house",
    ),
    ApartmentModel(
      images: "apartment4",
      name: "Obibini Nyansafo",
      price: 100,
      reviewCount: 9,
      sizeBathRoom: 80,
      sizeBedRoom: 80,
      features: ["AC", "Wifi", "Pool"],
      sizeDesc: "Double family house",
      desc:
          "Great Location in historic Ghanaian Park, just minutes from Nyady State University, College for Creative Studies, Accra Medical Center, and Henry Ford Health System. Walk to stadium, theaters and shopping. Centrally located between Downtown and Midtown",
      sizeLivingRoom: 120,
    ),
  ];
}
