import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

abstract class InjectableModule {

  @lazySingleton
  http.Client get client => http.Client();
}
