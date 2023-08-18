import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:guestlistvk/features/GuestList/cubit/login_cubit.dart';
import 'package:guestlistvk/features/GuestList/presentation/Screens/Guestlist.dart';
import 'package:guestlistvk/features/guestlist/cubit/guestlist_cubit.dart';

// import 'features/GuestList/presentation/Screens/login.dart';
import 'features/login/cubit/login_cubit.dart';
import 'features/login/presentation/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => GuestlistCubit(),
        ),
        // BlocProvider(
        //   create: (context) => SubjectBloc(),
        // ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/mainScreen': (context) => GuestList(),
        },
        // home: LoginPage(),
      ),
    );
  }
}
