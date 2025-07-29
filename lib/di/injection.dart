import 'package:app_settings/di/injection.dart';
import 'package:data/di/injection.dart';
import 'package:datastore/di/injection.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencies(String? environment) async {
  await configureAppSettingsDependencies(getIt, environment);
  await configureDataStoreDependencies(getIt, environment);
  await configureCoreDataDependencies(getIt, environment);

  getIt.init(environment: environment);
}
