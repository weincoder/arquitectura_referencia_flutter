import '../../models/astronomy_daily_data/astronomy_daily_data.dart';
import '../../models/astronomy_daily_data/gateway/astronomy_daily_data_gateway.dart';

class AstronomyDailyDataUseCase{
  final AstronomyDailyDataGateway astronomyDailyDataGateway;
  AstronomyDailyDataUseCase(this.astronomyDailyDataGateway);
  Future<AstronomyDailyData> getAstronomyDayliData() => astronomyDailyDataGateway.getAstronomyDayliData();
}