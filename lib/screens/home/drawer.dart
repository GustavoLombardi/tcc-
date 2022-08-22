import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tcc/routes/app_pages.dart';
import 'package:tcc/screens/login/controller/auth_controller.dart';
import 'package:tcc/screens/login/sign_in_screen.dart';

class DrawerHome extends StatelessWidget {
  final authController = Get.find<AuthController>();

  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = authController.user.fullname.toString();
    final email = authController.user.email.toString();
    final urlImage =
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 64, 120, 204),
        child: ListView(
          children: <Widget>[
            buildHeader(
                urlImage: urlImage, name: name, email: email, onClicked: () {}),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Home',
                    icon: Icons.home,
                    onClicked: () => Get.back(),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                      text: 'Faculdades',
                      icon: Icons.workspaces_outline,
                      onClicked: () => Get.offNamed(PagesRoutes.splashRoute)),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Perfil',
                    icon: Icons.person,
                    //     onClicked: () => Get.offNamed(PagesRoutes.profileRoute),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Sair',
                    icon: Icons.exit_to_app,
                    //     onClicked: () => selectedItem(context, 2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
