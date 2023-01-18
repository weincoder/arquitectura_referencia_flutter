import 'package:separate_using_folders/domain/models/astronomy_daily_data/astronomy_daily_data.dart';
import '../../../../domain/models/astronomy_daily_data/gateway/astronomy_daily_data_gateway.dart';
import 'package:http/http.dart' as http;
import 'errors/astronomy_dayly_data_api_error.dart';

class AstronomyDailyDataApi extends AstronomyDailyDataGateway{
  @override
  Future<AstronomyDailyData> getAstronomyDayliData()  async{
    Uri url = Uri.parse('https://go-apod.herokuapp.com/apod');
    final response = await http.get(url);
    if(response.statusCode == 200 ){
      final astronomyDailyData = astronomyDailyDataFromJson(response.body);
      return astronomyDailyData!;
    }else {
      throw AstronomyDailyDataApiError();
    }
  }
}
