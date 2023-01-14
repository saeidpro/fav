import 'package:flutter/cupertino.dart';

class DestinationModel {
  final String title;
  final int stars;
  final double price;
  //final int amount;
  //final double totalPrice;
  final String type;
  final String tours;
  final int people;
  final String dId;
  final String image;

  DestinationModel({
    required this.title,
    required this.stars,
    required this.price,
    //required this.amount,
    //required this.totalPrice,
    required this.type,
    required this.tours,
    required this.people,
    required this.dId,
    required this.image,
  });
}

class DestinationProvider with ChangeNotifier {
  final List<DestinationModel> _destinations = [
    DestinationModel(title: 'The Grand Canyon', stars: 4, price: 60, type: 'History, Cultural', tours: '2 tours in Asia', people: 3, dId: 'a', image: 'assets/images/grand_canyon.jpg',),
    DestinationModel(title: 'Bali Tourism', stars: 4, price: 145, type: 'Sea Beach, Natural', tours: '1 tour', people: 5, dId: 'b', image: 'assets/images/bali.jpg',),
    DestinationModel(title: 'Costa Rica Tourism', stars: 4, price: 85, type: 'Jungle, Natural', tours: '1 tour', people: 2, dId: 'c', image: 'assets/images/costa_rica.jpg')
  ];

  List<DestinationModel> get destinations {
    return [..._destinations];
  }


}
