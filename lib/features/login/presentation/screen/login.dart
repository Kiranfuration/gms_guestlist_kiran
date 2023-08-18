import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guestlistvk/features/login/cubit/login_state.dart';
// import 'package:guestlistvk/features/GuestList/cubit/login_cubit.dart';

// import '../../../GuestList/cubit/login_state.dart';
import '../../cubit/login_cubit.dart';
// import '../../../guestlist/cubit/login_state.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              obscureText: true,
              controller: passwordcontroller,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.password),
              ),
            ),
            const SizedBox(height: 20.0),
            BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {
                if (state.isLoaded) {
                  Navigator.pushNamed(context, '/mainScreen');
                }
              },
              builder: (context, state) {
                return Column(
                  children: [
                    ElevatedButton(
                      child: state.isLoading
                          ? const CircularProgressIndicator()
                          : const Text("Log In"),
                      onPressed: () async {
                        // Add your login logic here
                        context.read<LoginCubit>().login(
                            username: emailcontroller.text,
                            password: passwordcontroller.text);
                        await Future.delayed(const Duration(seconds: 5));

                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const MainScreen()),
                        // );
                      },
                    ),
                    Text(state.errorMessage)
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
