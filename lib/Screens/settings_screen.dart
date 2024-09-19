import 'package:app_theme_cubit/theme/app_theme.dart';
import 'package:app_theme_cubit/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,

      ),
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: AppTheme.values.length,
          itemBuilder: (context,index){
            final itemAppTheme=AppTheme.values[index];
            return Card(
              color: AppThemeData[itemAppTheme]!.primaryColor,
              child: ListTile(
                title: Text(
                  itemAppTheme.name,
                  style: AppThemeData[itemAppTheme]!.textTheme.titleMedium,
                ),
                onTap: () {
                  context.read<ThemeBloc>().add(ThemeChangedEvent(theme: itemAppTheme));
                  
                },
              ),
            );
          }),
      ),
    );
  }
}