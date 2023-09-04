import 'package:equatable/equatable.dart';

class Stay extends Equatable {
  final int id;
  final String name;
  final int price;
  final String description;
  final List features;
  final List images;

  const Stay({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.features,
    required this.images,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        price,
        description,
        features,
        images,
      ];
}
