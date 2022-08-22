import 'package:get/get.dart';
import 'package:tcc/models/usuario.dart';
import 'package:tcc/routes/app_pages.dart';
import 'package:tcc/screens/login/repository/auth_repository.dart';
import 'package:tcc/screens/login/result/auth_result.dart';
import 'package:tcc/services/util_services.dart';

class AuthController extends GetxController {
  final authRepository = AuthRepository();

  final utilsServices = UtilsServices();

  Usuario user = Usuario();

  RxBool isLoading = false.obs;

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    isLoading.value = true;

    AuthResult result =
        await authRepository.signIn(email: email, password: password);

    isLoading.value = false;

    result.when(
      success: (user) {
        this.user = user;
        Get.offAllNamed(PagesRoutes.homeRoute);
        print(user);
      },
      error: (message) {
        print(message);
        utilsServices.showToast(
          message: message,
          isError: true,
        );
      },
    );
  }
}
