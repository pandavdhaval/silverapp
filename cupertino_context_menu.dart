import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CupertinoContextMenuDemo extends StatefulWidget {
  const CupertinoContextMenuDemo({Key? key}) : super(key: key);

  @override
  State<CupertinoContextMenuDemo> createState() => _CupertinoContextMenuDemoState();
}

class _CupertinoContextMenuDemoState extends State<CupertinoContextMenuDemo> {

  var imageslist=[
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThGqMUWEBulhM1y0ZXXrkokwwaxqciSTyqow&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi8m8PNjPLthWdue1MpYkucww7VwY67xFWrw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKIypmKHv1qA5qJ9Zlj8Sz2KFICV3Gm1hfvA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEKr9HqOiYx9p7BddJEanisfjhT6GpVxEKHQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgEVPApAfLvA4gd6qjqNOqGv0y0Gx0b93G2g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKM7QQf696Pktuk118jSU_1n7IlMHNL7DueQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThGqMUWEBulhM1y0ZXXrkokwwaxqciSTyqow&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi8m8PNjPLthWdue1MpYkucww7VwY67xFWrw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKIypmKHv1qA5qJ9Zlj8Sz2KFICV3Gm1hfvA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEKr9HqOiYx9p7BddJEanisfjhT6GpVxEKHQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgEVPApAfLvA4gd6qjqNOqGv0y0Gx0b93G2g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKM7QQf696Pktuk118jSU_1n7IlMHNL7DueQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThGqMUWEBulhM1y0ZXXrkokwwaxqciSTyqow&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi8m8PNjPLthWdue1MpYkucww7VwY67xFWrw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKIypmKHv1qA5qJ9Zlj8Sz2KFICV3Gm1hfvA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEKr9HqOiYx9p7BddJEanisfjhT6GpVxEKHQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgEVPApAfLvA4gd6qjqNOqGv0y0Gx0b93G2g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKM7QQf696Pktuk118jSU_1n7IlMHNL7DueQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThGqMUWEBulhM1y0ZXXrkokwwaxqciSTyqow&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi8m8PNjPLthWdue1MpYkucww7VwY67xFWrw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKIypmKHv1qA5qJ9Zlj8Sz2KFICV3Gm1hfvA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEKr9HqOiYx9p7BddJEanisfjhT6GpVxEKHQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgEVPApAfLvA4gd6qjqNOqGv0y0Gx0b93G2g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKM7QQf696Pktuk118jSU_1n7IlMHNL7DueQ&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("CupertinoContextMenuDemo"),
      ),
      // child: Center(
      //   child: SizedBox(
      //     height: 20.h,
      //     width: 40.w,
      //     child: CupertinoContextMenu(
      //       actions: [
      //         CupertinoContextMenuAction(
      //           onPressed: (){
      //             Navigator.pop(context);
      //           }, child: Text("Copy"),
      //           trailingIcon: Icons.copy,
      //         ),
      //         CupertinoContextMenuAction(
      //           isDefaultAction: true,
      //           onPressed: (){
      //             Navigator.pop(context);
      //           }, child: Text("Favorite"),
      //           trailingIcon: Icons.favorite,
      //         ),
      //         CupertinoContextMenuAction(
      //           onPressed: (){
      //             Navigator.pop(context);
      //           },
      //           child: Text("Share"),
      //           trailingIcon: Icons.share,
      //         ),
      //         CupertinoContextMenuAction(
      //           isDestructiveAction: true,
      //           onPressed: (){
      //             Navigator.pop(context);
      //           }, child: Text("Delete"),
      //           trailingIcon: Icons.delete,
      //         ),
      //
      //       ],
      //       child: Container(
      //         height: 60.h,
      //         width: 100.w,
      //         decoration: BoxDecoration(
      //             color: Colors.green,
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           child:FlutterLogo(size: 200,),
      //     ),
      //
      //
      //     ),
      //   ),
      // ),

      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            itemCount: imageslist.length,
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisCount:2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
              mainAxisExtent: 200,
                // childAspectRatio: 3/4,
          ), itemBuilder: (context,index){
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

              ),
              child: CupertinoContextMenu(
                  previewBuilder: (context,animation,child)=>SizedBox.expand(
                    child: Image.network(imageslist[index],fit: BoxFit.cover,),
                  ),

                  actions: [
                  CupertinoContextMenuAction(
                            onPressed: (){
                              Navigator.pop(context);
                            }, child: Text("Copy"),
                            trailingIcon: Icons.copy,
                          ),
                          CupertinoContextMenuAction(
                            isDefaultAction: true,
                            onPressed: (){
                              Navigator.pop(context);
                            }, child: Text("Favorite"),
                            trailingIcon: Icons.favorite,
                          ),
                          CupertinoContextMenuAction(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: Text("Share"),
                            trailingIcon: Icons.share,
                          ),
                          CupertinoContextMenuAction(
                            isDestructiveAction: true,
                            onPressed: (){
                              Navigator.pop(context);
                            }, child: Text("Delete"),
                            trailingIcon: Icons.delete,
                          ),
              ], child: Image.network(imageslist[index])),
            );
          }),
        ),
      ),
    );
  }
}

