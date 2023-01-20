import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SliversDemo extends StatefulWidget {
  const SliversDemo({Key? key}) : super(key: key);

  @override
  State<SliversDemo> createState() => _SliversDemoState();
}

class _SliversDemoState extends State<SliversDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
             pinned: false,
            snap: false,
            floating: true,
            expandedHeight: 25.h,

            flexibleSpace: FlexibleSpaceBar(
             title: Text('sliversAppbar',style: TextStyle(color: Colors.black,fontSize: 10),),
              centerTitle: true,
              background: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKzUxKN1Dmbl0UfSwZRu7sTeFLkx0wn_ywOQ&usqp=CAU',fit: BoxFit.fill,),
            ),

          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            childCount: 20,
              (context,index){
              return Container(
                height: 10.h,
               decoration: BoxDecoration(
                 color: index.isEven?Colors.black26:Colors.white12,
               ),
                child: Center(child: Text('$index')),
              );
              }
          )),

          SliverGrid(delegate: SliverChildBuilderDelegate(
            childCount: 20,
              (context,index){
                return Container(
                  height: 10.h,
                  width:20.w,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKzUxKN1Dmbl0UfSwZRu7sTeFLkx0wn_ywOQ&usqp=CAU'),
                  
                );
              }
          ), gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ))
        ],
      ),
    );
  }
}
