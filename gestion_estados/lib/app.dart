import 'package:flutter/material.dart';
import 'package:gestion_estados/config/routes/app_routes.dart';
import 'package:gestion_estados/core/providers/album_provider.dart';
import 'package:gestion_estados/core/providers/cart_provider.dart';
import 'package:gestion_estados/core/providers/user_provider.dart';
import 'package:gestion_estados/domain/use_cases/album/album_use_cases.dart';
import 'package:gestion_estados/infraestructure/api/album_api/album_api.dart';
import 'package:gestion_estados/screens/home_page.dart';
import 'package:gestion_estados/screens/login_page.dart';
import 'package:gestion_estados/screens/payment_page.dart';
import 'package:provider/provider.dart';

import 'config/theme/theme_app.dart';

class GestionEstadosApp extends StatelessWidget {
  const GestionEstadosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (currenContext) =>
                AlbumProvider(albumUseCase: GetAlbumUseCase(CustomAlbumApi()))),
        ChangeNotifierProvider(
            create: (currenContext) =>
                UserProvider()),
        ChangeNotifierProvider(
            create: (currenContext) =>
                CartProvider())
      ],
      child: MaterialApp(
        theme: appTheme,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case (AppRoutes.home):
              return MaterialPageRoute(
                  builder: (currentContex) => const HomePage());
            case (AppRoutes.buy):
              return MaterialPageRoute(
                  builder: (currentContex) => const PaymentPage());
            default:
              return MaterialPageRoute(
                  builder: (currentContex) => const LoginPage());
          }
        },
      ),
    );
  }
}
