import 'package:equatable/equatable.dart';

class Ticker extends Equatable {
  final String name;
  final String fulllName;
  final String image;
  final String graphic;
  final double price;
  final double change;

  const Ticker({
    required this.name,
    required this.fulllName,
    required this.image,
    required this.graphic,
    required this.price,
    required this.change,
  });


  @override
  List<Object> get props => [name, fulllName, image, graphic, price, change];
}
