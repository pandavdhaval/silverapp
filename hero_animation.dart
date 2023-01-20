import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'hero_animation2.dart';

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  State<HeroAnimation> createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  var imageslist =[
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS9NukLm-cNqH5x3U2iS2wMOIgK5XPLIZcnIENesYVGWAPpPsCiD_6RjftwG5gQp5sM4w&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNUpPjs7HbyP9Zk3q3ftssylGWO3VzOmlvOA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe2UCgIor9y8s3Xya8MnIyyeK8BLexeZBdLQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS9NukLm-cNqH5x3U2iS2wMOIgK5XPLIZcnIENesYVGWAPpPsCiD_6RjftwG5gQp5sM4w&usqp=CAU',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hero animation'),
      ),
      body: Container(
       child:Center(
        child: ListView.builder(

          itemCount: imageslist.length,

            itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context,  "/hero2",arguments: [index,imageslist[index]]);
              },
              child: Hero(
                transitionOnUserGestures: true,
                tag: 'hero${index}',
                child: Image.network(imageslist[index],height: 10.h,width: 10.w,),
              ),
            );
            }),

       ),
      ),
    );
  }
}
