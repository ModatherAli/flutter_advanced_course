import 'package:app_settings/di/injection.dart';
import 'package:datastore/di/injection.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies(String? environment) {
  getIt.init(environment: environment);
  configureAppSettingsDependencies(getIt, environment);
  configureDataStoreDependencies(getIt, environment);
}
