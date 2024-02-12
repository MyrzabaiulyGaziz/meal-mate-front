import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mealmate/models/user.dart';

part 'app_state.freezed.dart';

@Freezed()
class AppState with _$AppState {
  const factory AppState({
    User? user,
  }) = _AppState;
}
