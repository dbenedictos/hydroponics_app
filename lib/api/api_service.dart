import 'package:hydroponics_app/api/api_client.dart';
import 'package:hydroponics_app/api/handler/environment_handler.dart';
import 'package:hydroponics_app/utilities/app_config.dart';

class ApiService {
  //Humidity Api
  EnvironmentApi _environmentApi;

  ApiClient get _environmentApiClient => _createApiClient(baseUrl: AppConfig().environmentApiBaseUrl);

  EnvironmentApi get environmentApi => _environmentApi ??= EnvironmentApi(_environmentApiClient);

  ApiClient _createApiClient({String baseUrl}) {
    return ApiClient(baseUrl: baseUrl);
  }
}
