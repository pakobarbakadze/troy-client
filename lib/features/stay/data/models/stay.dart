import '../../domain/entities/stay.dart';

class StayModel extends Stay {
  const StayModel({
    super.id,
    required super.name,
    required super.price,
    required super.description,
    required super.features,
    required super.images,
  });

  factory StayModel.fromJson(Map<String, dynamic> map) {
    return StayModel(
      id: map['id'],
      name: map['name'],
      price: map['price'],
      description: map['description'],
      features: map['features'],
      images: map['images'],
    );
  }

  factory StayModel.fromEntity(Stay entity) {
    return StayModel(
      id: entity.id,
      name: entity.name,
      price: entity.price,
      description: entity.description,
      features: entity.features,
      images: entity.images,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'description': description,
      'features': features,
      'images': images,
    };
  }
}
