import 'package:troy_client/core/resources/data_state.dart';

import '../entities/stay.dart';

abstract class StayRepository {
  // API
  Future<DataState<List<Stay>>> getStays();

  Future<DataState> saveStay(Stay stay);
}
