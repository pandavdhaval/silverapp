import 'package:flutter/cupertino.dart';

class CupertinoButtondemo extends StatefulWidget {
  const CupertinoButtondemo({Key? key}) : super(key: key);

  @override
  State<CupertinoButtondemo> createState() => _CupertinoButtondemoState();
}

class _CupertinoButtondemoState extends State<CupertinoButtondemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('CupertinoButton'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(child: Text('bottom'), onPressed: (){}),

            CupertinoButton.filled(child:Text('bottom'), onPressed: (){}),
          ],
        ),
      ),
    );
  }
}
