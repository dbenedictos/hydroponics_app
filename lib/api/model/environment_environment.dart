import 'package:freezed_annotation/freezed_annotation.dart';

part 'environment_environment.freezed.dart';
part 'environment_environment.g.dart';

@freezed
abstract class EnvironmentEnvironment with _$EnvironmentEnvironment {
  /// Initialises a ne instance of the [EnvironmentEnvironment] class
  factory EnvironmentEnvironment({
    @JsonKey(name: 'humidity', nullable: true) double humidity,
    @JsonKey(name: 'temperature', nullable: true) double temperature,
  }) = _EnvironmentEnvironment;

  factory EnvironmentEnvironment.fromJson(Map<String, dynamic> json) => _$EnvironmentEnvironmentFromJson(json);
}
