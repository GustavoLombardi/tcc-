import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tcc/routes/app_pages.dart';

import 'screens/login/controller/auth_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(AuthController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Agendamentos Unip',
      debugShowCheckedModeBanner: false,
      initialRoute: PagesRoutes.splashRoute,
      getPages: AppPages.pages,
    );
  }
}
