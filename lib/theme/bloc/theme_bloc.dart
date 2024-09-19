import 'package:app_theme_cubit/theme/app_theme.dart';
import 'package:app_theme_cubit/theme/cash_theme_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<ThemeEvent>((event, emit) async{
      if (event is GetCurrentThemeEvent) {
        final themeIndex=await CasheThemeHelper().getCashedThemeIndex();
        final theme=AppTheme.values.firstWhere((appTheme) => appTheme.index==themeIndex);
        emit(LoadedThemeState(themeData: AppThemeData[theme]!));
      } else if (event is ThemeChangedEvent) {
        final themeIndex=event.theme.index ;
        await CasheThemeHelper().casheThemeIndex(themeIndex);
        emit(LoadedThemeState(themeData: AppThemeData[event.theme]!));
      }
    });
  }
}
