import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spiderweb/logic/home_cubit.dart';
import 'package:spiderweb/screens/home_screen.dart';

import 'injection/injection.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<HomeCubit>(
          create: ((context) => getIt<HomeCubit>()), child: const HomeScreen()),
    );
  }
}
