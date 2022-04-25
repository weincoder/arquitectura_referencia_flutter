import 'package:flutter/material.dart';
import 'package:gestion_estados/config/routes/app_routes.dart';
import 'package:gestion_estados/core/providers/user_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    userNameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final providerUser = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bienvenido',
                style: Theme.of(context).textTheme.headline1,
              ),
              TextFormField(
                controller: userNameController,
                decoration: const InputDecoration(
                  hintText: 'Usuario',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Contraseña',
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                child: const Text('Ingresar'),
                onPressed: () {
                    providerUser.userLogged = true;
                    providerUser.userName =userNameController.text;
                    Navigator.pushReplacementNamed(context, AppRoutes.home);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
