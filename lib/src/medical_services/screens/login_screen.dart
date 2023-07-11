import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:marker_point/constant/string.dart';
import 'package:marker_point/src/app/bloc/login/login_bloc.dart';
import 'package:marker_point/src/app/resource/user_repository.dart';
import 'package:marker_point/src/app/view/widget/home_page/home_page.dart';
import 'package:marker_point/src/medical_services/screens/home_screen.dart';
import 'package:marker_point/src/medical_services/screens/signup_screen.dart';
import 'package:marker_point/src/medical_services/screens/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _requiredValidator = RequiredValidator(
    errorText: pleaseFillOutThisField,
  );

  @override
  Widget build(BuildContext context) {
    void getLogin() {
      late LoginEvent event;
      event = LoginEvent.submit(
          email: _emailController.text, password: _passwordController.text);
      context.read<LoginBloc>().add(event);
    }

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          success: (user) {
            if (user!.authentication.isNotEmpty) {
              UserRepository.instance.saveUserRepository(user.authentication);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomeScreen();
              }));
              // Navigator.push(context, HomeRestaurant.route(user: user));
            }
          },
        );
      },
      child: Scaffold(
        // color: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset('assets/images/loading.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Input Email'),
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  controller: _passwordController,
                  obscureText: passToggle ? true : false,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      label: const Text('Input Password'),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: () {
                          if (passToggle == true) {
                            passToggle = false;
                          } else {
                            passToggle = true;
                          }
                          setState(() {});
                        },
                        child: passToggle
                            ? const Icon(CupertinoIcons.eye_slash_fill)
                            : const Icon(CupertinoIcons.eye_fill),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: const Color.fromARGB(235, 85, 94, 218),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        getLogin();
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return const HomeScreen();
                        // }));
                      },
                      child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
                          child: Center(
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have any account ?',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SignUpScreen();
                        }));
                      },
                      child: const Text(
                        'Create Account',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color.fromARGB(235, 85, 94, 218)),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Back to welcomeScreen  ?',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const WelcomeScreen();
                        }));
                      },
                      child: const Text(
                        'Welcome Screen',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color.fromARGB(235, 85, 94, 218)),
                      ))
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
