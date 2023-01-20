import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionsheet extends StatefulWidget {
  const CupertinoActionsheet({Key? key}) : super(key: key);

  @override
  State<CupertinoActionsheet> createState() => _CupertinoActionsheetState();
}

class _CupertinoActionsheetState extends State<CupertinoActionsheet> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('CupertinoActionsheet'),
      ),
      child: Center(
        child: CupertinoButton.filled(child:Text('CupertinoActionsheet '), onPressed: (){
           showCupertinoModalPopup(context: context, builder:build);

           final act = CupertinoActionSheet(
             title: Text('CupertinoActionsheet '),
             message: Text('Action'),
             actions: [
               CupertinoActionSheetAction(onPressed: (){}, child: Text('Profile')),
               CupertinoActionSheetAction(onPressed: (){}, child: Text('Demo')),
             ],
             cancelButton: CupertinoActionSheetAction(
               child: Text("Cancel"),
               onPressed: (){
                 Navigator.pop(context);
               },

             ),

           );
           showCupertinoModalPopup(context: context,
               builder: (BuildContext context)=>act
           );
        },
        )
      ),
    );
  }
}
