import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:troy_client/core/resources/data_state.dart';
import 'package:troy_client/features/stay/domain/usecase/save_stay.dart';
import 'package:troy_client/injection.dart';

import '../../../../domain/entities/stay.dart';
import '../../../../domain/usecase/get_stays.dart';

final remoteStaysProvider = FutureProvider<List<Stay>>((ref) async {
  GetStaysUseCase getStaysUseCase = GetStaysUseCase(s1());

  final dataState = await getStaysUseCase();

  if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
    return dataState.data!;
  } else {
    throw 'Failed to fetch stays';
  }
});

final saveStayProvider = Provider<void Function(Stay)>(
  (_) => (Stay stay) async {
    SaveStayUseCase saveStayUseCase = SaveStayUseCase(s1());
    await saveStayUseCase.call(params: stay);
  },
);
