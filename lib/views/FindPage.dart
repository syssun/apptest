import 'package:flutter/material.dart';
import 'package:apptest/widgets/MyWidgets.dart';
class FindPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new _Page();
  }
}
class _Page extends State<FindPage>{
  @override
  Widget build(BuildContext context){
    return layout(context);
  }
  Widget layout(BuildContext context){
    return new Scaffold(
      appBar: MyWidgets.buildAppBar(context, "发现"),
      body: Center(
        child: Text("发现"),
      ),
    );
  }
}
