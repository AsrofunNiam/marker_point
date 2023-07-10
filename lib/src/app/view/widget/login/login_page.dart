import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:marker_point/constant/string.dart';
import 'package:marker_point/src/app/bloc/login/login_bloc.dart';
import 'package:marker_point/src/app/view/widget/home_page/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  // final SaveTokenBloc? saveTokenBloc;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _requiredValidator = RequiredValidator(
    errorText: pleaseFillOutThisField,
  );

  void getLogin() {
    late LoginEvent event;
    event = LoginEvent.submit(
        email: _emailController.text, password: _passwordController.text);
    context.read<LoginBloc>().add(event);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          success: (user) {
            if (user!.authentication.isNotEmpty) {
              // BlocListener<SaveTokenBloc, SaveTokenState>(
              // bloc: widget.saveTokenBloc,
              // listener: (context, stateToken) {
              //   stateToken.maybeWhen(
              //     orElse: () {},
              //     authenticated: (accessToken) {
              //       TokenRepository.instance
              //           .setUserTokenRepository(user.authentication);
              //     },
              //   );
              // });

              Navigator.push(context, HomeRestaurant.route(user: user));
            }
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login Page '),
        ),
        body: Container(
          padding: const EdgeInsets.all(30),
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 70,
                width: 70,
                color: Colors.red,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Login User'),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'email '),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    getLogin();
                  },
                  child: const Text('Saved'))
            ]),
          ),
        ),
      ),
    );
  }
}
