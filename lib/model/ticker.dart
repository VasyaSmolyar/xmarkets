import 'package:equatable/equatable.dart';

class Ticker extends Equatable {
  final String name;
  final String fullName;
  final String image;
  final String graphic;
  final double price;
  final double change;

  const Ticker({
    required this.name,
    required this.fullName,
    required this.image,
    required this.graphic,
    required this.price,
    required this.change,
  });


  @override
  List<Object> get props => [name, fullName, image, graphic, price, change];
}
