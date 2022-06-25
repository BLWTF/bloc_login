import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_login/app.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:user_repository/user_repository.dart';

void main() {
  BlocOverrides.runZoned(
      () => runApp(
            App(
              authenticationRepository: AuthenticationRepository(),
              userRepository: UserRepository(),
            ),
          ),
      blocObserver: LoginObserver());
}

class LoginObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType}: ${change}');
  }
}
