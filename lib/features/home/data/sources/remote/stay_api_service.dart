import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:troy_client/core/constants/constants.dart';
import 'package:troy_client/features/home/data/models/stay.dart';

part 'stay_api_service.g.dart';

@RestApi(baseUrl: APIBaseURL)
abstract class StayApiService {
  factory StayApiService(Dio dio) = _StayApiService;

  @GET('/stay')
  Future<HttpResponse<List<StayModel>>> getStays();
}
