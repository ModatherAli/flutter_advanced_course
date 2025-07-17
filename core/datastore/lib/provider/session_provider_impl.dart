import 'package:injectable/injectable.dart';

import 'session_provider.dart';

@Injectable(as: SessionProvider, env: [Environment.prod])
class ProdSessionProviderImpl extends SessionProvider {
  @override
  String getAccessToken() {
    return 'access_token_placeholder';
  }

  @override
  String getClientId() {
    return '1111111111111';
  }

  @override
  String getRefreshToken() {
    return 'refresh_token_placeholder';
  }

  @override
  String getUserId() {
    return '123456789';
  }
}

@Injectable(as: SessionProvider, env: [Environment.dev])
class DevSessionProviderImpl extends SessionProvider {
  @override
  String getAccessToken() {
    return 'access_token_placeholder';
  }

  @override
  String getClientId() {
    return '222222222222';
  }

  @override
  String getRefreshToken() {
    return 'refresh_token_placeholder';
  }

  @override
  String getUserId() {
    return '123456789';
  }
}
