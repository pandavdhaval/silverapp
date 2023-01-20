import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndigeter extends StatefulWidget {
  const CupertinoActivityIndigeter({Key? key}) : super(key: key);

  @override
  State<CupertinoActivityIndigeter> createState() => _CupertinoActivityIndigeterState();
}

class _CupertinoActivityIndigeterState extends State<CupertinoActivityIndigeter> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("aaaaaaaa"),
      ),


      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                CupertinoActivityIndicator( color: CupertinoColors.activeBlue,radius: 20,animating: true),
                Text("sssssssss",),
                Text("asdas"),
              ],
            ),
          ],
        ),
      ),


    );
  }
}
