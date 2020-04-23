import 'package:get_it/get_it.dart';
import 'package:vision_plus/HttpServices/HttpServiceSmDeliveryChallan.dart';
import 'package:vision_plus/ScopedModels/scopedModelSMDeliveryChallan.dart';
import 'package:vision_plus/models/smDeliveryChallan.dart';

GetIt locator = GetIt();

void setupLocator() {
  // register services wich fetches the data
  locator.registerLazySingleton<HttpServiceSmDeliveryChallan>(() => HttpServiceSmDeliveryChallan());

  // register models
  locator.registerFactory<ScopedModelSMDeliveryChallan>(() => ScopedModelSMDeliveryChallan());
}