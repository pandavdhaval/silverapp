import 'package:flutter/cupertino.dart';

class CupertinoAlertDialogdemo extends StatefulWidget {
  const CupertinoAlertDialogdemo({Key? key}) : super(key: key);

  @override
  State<CupertinoAlertDialogdemo> createState() => _CupertinoAlertDialogdemoState();
}

class _CupertinoAlertDialogdemoState extends State<CupertinoAlertDialogdemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('CupertinoAlertDialog class'),
      ),
      child:Center(

      ),
    );
  }
}
