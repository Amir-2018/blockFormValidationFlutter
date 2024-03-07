abstract class SignInState {}

class SignInInitialState extends SignInState {}

class SignInvalidState extends SignInState {}

class SignInInvalidState extends SignInState {}

class SignErrorState extends SignInState {
  final String errorMessage;
  SignErrorState(this.errorMessage);
}

class SignInLoadingState extends SignInState {}
