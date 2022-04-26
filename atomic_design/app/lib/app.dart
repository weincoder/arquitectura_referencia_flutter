import 'package:app/config/routes/app_routes.dart';
import 'package:app/screens/atoms/asset_image.dart';
import 'package:app/screens/atoms/atoms_page.dart';
import 'package:app/screens/atoms/image.dart';
import 'package:app/screens/atoms/separeted.dart';
import 'package:app/screens/foundations/foundation_page.dart';
import 'package:app/screens/home.dart';
import 'package:app/screens/molecules/circle_card.dart';
import 'package:app/screens/molecules/molecules_page.dart';
import 'package:app/screens/molecules/tile_card.dart';
import 'package:app/screens/organisms/list_of_cards.dart';
import 'package:app/screens/organisms/organisms_page.dart';
import 'package:app/screens/pages/pages_page.dart';
import 'package:app/screens/pages/success_trx.dart';
import 'package:app/screens/templates/show_component_page.dart';
import 'package:app/screens/templates/show_info_page.dart';
import 'package:app/screens/templates/template_page.dart';
import 'package:flutter/material.dart';
import 'package:design_system_weincode/foundations/themes/weincode_themes.dart';

class ShowcaseApp extends StatelessWidget {
  const ShowcaseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ligthThemeWeincode,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case (AppRoutes.foundation):
            return MaterialPageRoute(
                builder: (context) => const FoundationsPage());
          case (AppRoutes.pages):
            return MaterialPageRoute(
                builder: (context) => PagesPage());
          case (AppRoutes.successTrx):
            return MaterialPageRoute(
                builder: (context) => const SuccessTrxPage());
          case (AppRoutes.organisms):
            return MaterialPageRoute(
                builder: (context) => OrganismsPage());
          case (AppRoutes.templates):
            return MaterialPageRoute(
                builder: (context) => TemplatesPage());
          case (AppRoutes.showInfo):
            return MaterialPageRoute(
                builder: (context) => const ShowInfoPage());
          case (AppRoutes.showComponent):
            return MaterialPageRoute(
                builder: (context) => const ShowComponentPage());
          case (AppRoutes.listOfCards):
            return MaterialPageRoute(
                builder: (context) => const ListOfCards());
          case (AppRoutes.molecules):
            return MaterialPageRoute(
                builder: (context) => MoleculesPage());
          case (AppRoutes.moleculeCardTile):
            return MaterialPageRoute(builder: (context) => const TileCard());
          case (AppRoutes.moleculeCircle):
            return MaterialPageRoute(builder: (context) => const CircleCard());
          case (AppRoutes.image):
            return MaterialPageRoute(builder: (context) => const AtomsImage());
          case (AppRoutes.assetImage):
            return MaterialPageRoute(
                builder: (context) => const AtomAssetImage());
          case (AppRoutes.separeted):
            return MaterialPageRoute(
                builder: (context) => const AtomSepareted());

          case (AppRoutes.atoms):
            return MaterialPageRoute(builder: (context) => AtomsPage());
          default:
            return MaterialPageRoute(builder: (context) => const HomePage());
        }
      },
    );
  }
}
