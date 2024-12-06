import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import 'navigation_service.dart';

GetIt getIt = GetIt.instance;

void setUpLocator(){
  getIt.registerLazySingleton<NavigationService>(()=> NavigationService());
}