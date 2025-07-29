import 'package:flutter_course/di/injection.dart';
import 'package:login/data/request/login_request.dart';
import 'package:login/domain/usecase/login_usecase.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

void doLogin() async {
  final loginUseCase = getIt<LoginUseCase>();
  final loginRequest = LoginRequest("mina@gmail.com", "123456");

  final result = await loginUseCase.execute(loginRequest);
  result.fold((failure) {
    print("Login Failed: ${failure.message}");
  }, (loginModel) {
    print("Login Success: ${loginModel.name}");
  });
}
