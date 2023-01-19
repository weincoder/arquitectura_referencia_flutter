import '../astronomy_daily_data.dart';

abstract class AstronomyDailyDataGateway {
  Future<AstronomyDailyData> getAstronomyDailyData();
}