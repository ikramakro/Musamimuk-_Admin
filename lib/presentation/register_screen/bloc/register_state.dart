part of 'register_bloc.dart';

class RegisterState extends Equatable {
  RegisterState(
      {this.userNameController,
      this.emailController,
      this.passwordController,
      this.selectedDropDownValue,
      this.registerModelObj});
  TextEditingController? userNameController;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  SelectionPopupModel? selectedDropDownValue;
  RegisterModel? registerModelObj;
  @override
  List<Object?> get props => [
        userNameController,
        emailController,
        passwordController,
        selectedDropDownValue,
        registerModelObj
      ];
  RegisterState copyWith({
    TextEditingController? userNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    SelectionPopupModel? selectedDropDownValue,
    RegisterModel? registerModelObj,
  }) {
    return RegisterState(
      userNameController: userNameController ?? this.userNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      registerModelObj: registerModelObj ?? this.registerModelObj,
    );
  }
}
