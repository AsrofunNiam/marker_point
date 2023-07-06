import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marker_point/src/app/bloc/login/login_bloc.dart';
import 'package:marker_point/src/app/view/widget/login/login_page.dart';

import 'src/app/bloc/save_token/save_token_bloc.dart';

void main() {
  runApp(const MainBatchFive());
}

class MainBatchFive extends StatelessWidget {
  const MainBatchFive({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        // BlocProvider(
        //   create: (context) => SaveTokenBloc()..add(SaveTokenEvent.login('')),
        // ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'batch five',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginPage(),
      ),
    );
  }
}
