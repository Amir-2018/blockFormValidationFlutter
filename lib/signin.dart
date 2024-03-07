import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formvalidation/bloc/sign_in_bloc.dart';
import 'package:formvalidation/bloc/sign_in_event.dart';
import 'package:formvalidation/bloc/sign_in_state.dart';

class SignIn extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  SignIn({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      TextField(
        decoration: InputDecoration(hintText: 'Email address'),
        controller: emailController,
        onChanged: (value) {
          debugPrint(value);
          debugPrint("controlleremail${emailController.text}");
          BlocProvider.of<SignInBloc>(context)
              .add(SignInClassChangedEvent(value));
        },
      ),
      const SizedBox(
        height: 100,
      ),
      BlocBuilder<SignInBloc, SignInState>(
        builder: (context, state) {
          if (state is SignErrorState) {
            return Text(
              state.errorMessage,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 35,
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    ]));
  }
}
