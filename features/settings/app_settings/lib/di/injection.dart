import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

@injectableInit
void configureAppSettingsDependencies(GetIt getIt, String? environment) =>
    getIt.init(environment: environment);
