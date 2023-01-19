
import 'package:astronomy_daily_data/domain/use_cases/astronomy_daily_data/astronomy_detail_data.dart';
import 'package:astronomy_daily_data/infraestructure/driven_adapter/api/astronomy_daily_data_api/astronomy_daily_data_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final astronomyDailyDataProvider = Provider<AstronomyDailyDataUseCase> ((ref) {
  return AstronomyDailyDataUseCase(AstronomyDailyDataApi());
},);