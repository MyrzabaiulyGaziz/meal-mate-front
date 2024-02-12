import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealmate/core/cubit/app_state.dart';
import 'package:mealmate/services/auth_service.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState()) {
  }

  Future<void> getUser() async {
    if (state.user != null) return;
    final result = await AuthService.getUser();
    result.fold((l) => null, (r) => emit(state.copyWith(user: r)));
  }
}
