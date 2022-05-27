import 'package:flutter/material.dart';
import 'package:render_object_example/show_image.dart';
import 'package:render_object_example/simple_body.dart';
class DiferentSimpleBody extends StatefulWidget {
  const DiferentSimpleBody({Key? key}) : super(key: key);

  @override
  State<DiferentSimpleBody> createState() => _DiferentSimpleBodyState();
}

class _DiferentSimpleBodyState extends State<DiferentSimpleBody> {
  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding: EdgeInsets.all(8.0),
      child : SimpleBody()
      
  
    );
  }
}