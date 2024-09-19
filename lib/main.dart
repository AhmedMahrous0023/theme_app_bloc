import 'package:app_theme_cubit/Screens/home_screen.dart';
import 'package:app_theme_cubit/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc()..add(GetCurrentThemeEvent()),
      child: BlocBuilder<ThemeBloc,ThemeState>(builder: ((context, state) {
        if (state is LoadedThemeState){
          return MaterialApp(
            theme: state.themeData,
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      );
        }
        return Container();
        
      }))
    );
  }
}
