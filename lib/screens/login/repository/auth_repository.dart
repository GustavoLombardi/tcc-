import 'package:tcc/config/endpoints.dart';
import 'package:tcc/models/usuario.dart';
import 'package:tcc/screens/login/result/auth_result.dart';
import 'package:tcc/services/http_manager.dart';

class AuthRepository {
  final HttpManager _httpManager = HttpManager();

  Future<AuthResult> signIn(
      {required String email, required String password}) async {
    final result = await _httpManager.restRequest(
      url: Endpoints.signin,
      method: HttpMethods.post,
      body: {
        'email': email,
        'password': password,
      },
    );

    if (result['result'] != null) {
      final user = Usuario.fromMap(result['result']);
      return AuthResult.success(user);

      print(user);
    } else {
      return AuthResult.error('Email e/ou senha inválidos');
    }
  }
}
