import 'package:animations_example/pages/explicit_animation.dart';
import 'package:animations_example/pages/home.dart';
import 'package:animations_example/pages/implicit_animation.dart';
import 'package:animations_example/pages/transform_widget.dart';
import 'package:animations_example/pages/tween_animation_builder_example.dart';
import 'package:animations_example/routes/routes.dart';
import 'package:design_system_weincode/design_system_weincode.dart';
import 'package:flutter/material.dart';

class AppAnimated extends StatelessWidget {
  const AppAnimated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ligthThemeWeincode,
      home: const HomePage() ,
      onGenerateRoute: (settings)  {
        switch(settings.name){
          case(AppRoutes.transform):
            return MaterialPageRoute(builder: ((context) => const TransformWidgetExample() ));
          case(AppRoutes.implicitAnimation):
            return MaterialPageRoute(builder: ((context) => const ImplicitAnimationExample() ));
          case(AppRoutes.tweenExample):
            return MaterialPageRoute(builder: ((context) => const TweenAnimationBuilderExample() ));
          case(AppRoutes.explicitAnimation):
            return MaterialPageRoute(builder: ((context) => const ExplicitAnimationExample() ));
          default:
            return MaterialPageRoute(builder: ((context) => const HomePage()));
        }
      } ,
    );
  }
}