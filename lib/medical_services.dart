import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marker_point/src/app/bloc/login/login_bloc.dart';
import 'package:marker_point/src/medical_services/welcome_screen.dart';

void main() {
  runApp(const MedicalServices());
}

class MedicalServices extends StatelessWidget {
  const MedicalServices({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Medical Services',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const WelcomeScreen(),
      ),
    );
  }
}
