import 'package:troy_client/core/resources/data_state.dart';
import 'package:troy_client/features/home/domain/entities/stay.dart';

abstract class StayRepository {
  // API
  Future<DataState<List<Stay>>> getStays();
}
