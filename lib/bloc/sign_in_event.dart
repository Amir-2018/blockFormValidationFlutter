abstract class SignInEvent {}

class SignInClassChangedEvent extends SignInEvent {
  final String emailValue;
  SignInClassChangedEvent(this.emailValue);
}

class SignInSubmittedEvent extends SignInEvent {
  final String email;
  final String password;
  SignInSubmittedEvent(this.email, this.password);
}
