import 'package:bloc/bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  void login({required String username, required String password}) async {
    if (username.isEmpty || password.isEmpty) {
      emit(state.copyWith(errorMessage: 'Username and password are required.'));
      return;
    }
    if (!username.contains('@')) {
      emit(state.copyWith(errorMessage: 'this email is not valid '));
      return;
    }

    if (password.length >= 7) {
      emit(state.copyWith(errorMessage: ''));
    } else {
      emit(state.copyWith(errorMessage: 'password contains atleast 7 digits '));
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));
    await Future.delayed(const Duration(seconds: 2));

    emit(state.copyWith(isLoading: false, isLoaded: true));
  }
}
