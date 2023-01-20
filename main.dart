import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sliversapp/cupertino_activity_indigeter.dart';
import 'package:sliversapp/hero_animation2.dart';
import 'package:sliversapp/slivers_demo.dart';

import 'cupertino_actionsheet.dart';
import 'cupertino_alert_dialog.dart';
import 'cupertino_button.dart';
import 'cupertino_context_menu.dart';
import 'hero_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) =>Sizer(builder: (context,orientation,deviceType){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: CupertinoActionsheet(),
routes: {
        "/hero2":(context)=>HeroAnimation2(),
},

    );
  }
  );
}