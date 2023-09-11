import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:troy_client/core/constants/constants.dart';
import 'package:troy_client/features/auth/data/models/user.dart';
import 'package:troy_client/features/auth/data/models/user_data.dart';

part 'auth_api_service.g.dart';

@RestApi(baseUrl: APIBaseURL)
abstract class AuthApiService {
  factory AuthApiService(Dio dio) = _AuthApiService;

  @POST('/auth/login')
  Future<HttpResponse<UserDataModel>> login(@Body() credentials);

  @POST('/auth/register')
  Future<HttpResponse> register(@Body() UserModel user);
}
