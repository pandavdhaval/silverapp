import 'package:flutter/material.dart';

class HeroAnimation2 extends StatefulWidget {
  const HeroAnimation2({Key? key}) : super(key: key);

  @override
  State<HeroAnimation2> createState() => _HeroAnimation2State();
}

class _HeroAnimation2State extends State<HeroAnimation2> {
  int? index;
  String? image;
  @override
  void didChangeDependencies(){
    var argument=ModalRoute.of(context)!.settings.arguments! as List;
    // index=argument[0];
    image=argument[1];

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hero animation2'),
      ),
      body:Container(
        child: Center(
          child: Hero(
            transitionOnUserGestures: true,
            tag: "Hero${index.toString()}",
            child: Center(child: Image.network(image!)),
          ),
        ),
      ) ,
    );
  }
}
