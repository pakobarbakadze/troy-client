import 'package:equatable/equatable.dart';

class Stay extends Equatable {
  const Stay({
    this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.features,
    required this.images,
  });

  final String? id;
  final String name;
  final int price;
  final String description;
  final List features;
  final List images;

  @override
  bool get stringify => true;

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
