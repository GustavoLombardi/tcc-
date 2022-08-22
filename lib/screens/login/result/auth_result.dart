import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tcc/models/usuario.dart';

part 'auth_result.freezed.dart';

@freezed
class AuthResult with _$AuthResult {
  factory AuthResult.success(Usuario user) = Success;
  factory AuthResult.error(String message) = Error;
}
