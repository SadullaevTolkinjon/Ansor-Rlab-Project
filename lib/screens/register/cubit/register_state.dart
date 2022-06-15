import 'package:flutter/foundation.dart';

abstract class RegisterState {
  const RegisterState();
}

class RegisterInitial extends RegisterState {
  const RegisterInitial();
}

class RegisterLoading extends RegisterState {
  const RegisterLoading();
}

class RegisterComplete extends RegisterState {
  final List<String> response;
  const RegisterComplete(this.response);
  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is RegisterComplete && listEquals(o.response, response);
  }

  @override
  int get hashCode => response.hashCode;
}

class RegisterError extends RegisterState {
  final errorMassege;
  const RegisterError(this.errorMassege);
}
