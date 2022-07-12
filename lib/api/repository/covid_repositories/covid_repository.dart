import 'package:apiwithbloc/api/provider/covid_provides/covid_provider.dart';
import 'package:apiwithbloc/dto/model%20/covid/covid_model.dart';

class CovidRepository {
  final _provider = ApiProvider();

  Future<Covid> getCovidList() async {
    return _provider.getCovidList();
  }
}

class NetworkError extends Error {}
