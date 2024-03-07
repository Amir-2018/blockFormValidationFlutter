import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formvalidation/bloc/sign_in_bloc.dart';
import 'package:formvalidation/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: BlocProvider(
        create: (context) => SignInBloc(),
        child: SignIn(),
      ),
    ));
  }
}
