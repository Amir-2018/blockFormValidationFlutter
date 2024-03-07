import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formvalidation/bloc/sign_in_event.dart';
import 'package:formvalidation/bloc/sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitialState()) {
    on<SignInClassChangedEvent>((event, emit) {
      if (event.emailValue != "") {
        emit(SignErrorState("Please enter a valid email address"));
      }
    });
    /* on<SignInSubmittedEvent>((event, emit) {
      emit(SignInLoadingState());
    });*/
  }
}
