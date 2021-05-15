import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydroponics_app/api/model/environment_environment.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
abstract class AppState with _$AppState {
  /// Initialises a ne instance of the [AppState] class
  factory AppState({
    @JsonKey(name: 'environment', nullable: true) EnvironmentEnvironment environment,
  }) = _AppState;

  factory AppState.init() => AppState(environment: EnvironmentEnvironment());

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
