import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:musamimuk_admin/data/repository/repository.dart';
import '../../../core/app_export.dart';
import '../../../core/utils/constant.dart';
import '../../../core/utils/shared_prf.dart';
import '../models/login_page_model.dart';

part 'login_page_event.dart';
part 'login_page_state.dart';

class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {
  LoginPageBloc(LoginPageState initialState) : super(initialState) {
    on<LoginPageInitialEvent>(_onInitialize);
    on<LoginButtonEvent>(_login);
  }

  Repository repository = Repository();
  LocalStorageService localStorageService = LocalStorageService();

  _onInitialize(
    LoginPageInitialEvent event,
    Emitter<LoginPageState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }

  _login(
    LoginButtonEvent event,
    Emitter<LoginPageState> emit,
  ) async {
    final email = state.emailController?.text;
    final password = state.passwordController?.text;

    if (email != null && password != null) {
      try {
        final response = await repository.login(
          formData: {'email': email, 'password': password},
        );

        if (response != null && response.status == 'successfully') {
          // Store the token and user data
          localStorageService.accessToken = response.dbData?.token;

          // Convert user data to JSON string and store it
          if (response.dbData?.user != null) {
            localStorageService.userData =
                json.encode(response.dbData?.user?.toJson());
          }

          // Navigate to another screen
          NavigatorService.pushNamed(AppRoutes.rootScreen);
        } else {
          // Handle error (e.g., show an error message)
          showError(response.errorDescription ?? '');
        }
      } catch (e) {
        // Handle any exceptions that occur during the login process
        print('Error during login: $e');
        showError('An error occurred during login. Please try again.');
      } finally {
        // emit(state.copyWith(isLoading: false));
      }
    }
  }
}
