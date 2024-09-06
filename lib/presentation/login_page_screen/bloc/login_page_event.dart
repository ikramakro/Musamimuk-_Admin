part of 'login_page_bloc.dart';

class LoginPageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginPageInitialEvent extends LoginPageEvent {
  @override
  List<Object?> get props => [];
}

class LoginButtonEvent extends LoginPageEvent {
  // LoginButtonEvent({required this.email,required this.password});
  // String email;
  // String password;
  @override
  List<Object?> get props => [
        // email, password
      ];
}
