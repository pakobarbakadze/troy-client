import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:troy_client/core/resources/data_state.dart';
import 'package:troy_client/features/home/domain/entities/stay.dart';
import 'package:troy_client/features/home/domain/usecase/get_stays.dart';
import 'package:troy_client/injection.dart';

final staysProvider = FutureProvider<List<Stay>>((ref) async {
  GetStaysUseCase getStaysUseCase = GetStaysUseCase(s1());
  DataState<List<Stay>> response = await getStaysUseCase.call();
  return response.data ?? [];
});
