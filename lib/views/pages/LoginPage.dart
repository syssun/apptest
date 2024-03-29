import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:apptest/views/pages/ForgetPassWordPage.dart';
import 'package:apptest/widgets/MyWidgets.dart';

import 'RegisterPage.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new LoginPageState();
  }
}
class LoginPageState extends State<LoginPage>{

    @override
    Widget build(BuildContext context){
      //SingleChildScrollView
      return
         new Scaffold(
          resizeToAvoidBottomPadding: true,
          appBar: MyWidgets.buildAppBar(context, '登录'),
          body:
          SingleChildScrollView(
            child:new Container(

              child: Center(
                child: Column(
                  children: <Widget>[
                    new Container(
                      child: MyWidgets.imageAssetWithSize("images/icons/yuyue.png"),
                      padding: EdgeInsets.only(top:30.0),
                    ),
                    new Container(
                      margin: EdgeInsets.only(top:40.0,left: 10.0,right: 10.0,bottom: 10.0),
                      child: new TextFormField(
                        decoration: new InputDecoration(
                          // labelText: '手机',
                            icon: new Icon(Icons.phone),
                            contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                            hintText: '请输入手机号',
                        ),
                        onSaved: (val) {
                          print(val);
                        },
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(top:20.0,left: 10.0,right: 10.0,bottom: 10.0),
                      child: new TextFormField(
                        obscureText: true,
                        decoration: new InputDecoration(
                          // labelText: '请输入密码',
                            icon: new Icon(Icons.lock),
                            contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                            //prefixIcon:new Icon(Icons.lock),
                            hintText: '密码'
                        ),
                        onSaved: (val) {
                          print(val);
                        },

                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new GestureDetector(
                            child:new Text("立即注册",style: new TextStyle(
                                color: Colors.blue
                            ),),
                            onTap:(){
                              jump(context,new RegisterPage());
                            } ,
                          ),
                          new GestureDetector(
                            child:new Text("忘记密码",style: new TextStyle(
                                color: Colors.red
                            ),),
                            onTap:(){
                              jump(context,new ForgetPassWordPage());
                            } ,
                          ),


                        ],
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.all(20.0),
                      child: new MaterialButton(
                        child: Text("登录"),
                        elevation: 20,
                        minWidth: double.infinity,
                        color: Colors.blue,
                        height: 50.0,
                        textColor: Colors.white,
                        onPressed: (){
                          Fluttertoast.showToast(msg:'我被点击了');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
         );
    }

    void   jump(BuildContext context,Widget widget) {
      Navigator.push<String>(
        context,
        new MaterialPageRoute(
          builder: (context) => widget,
        ),
      ) ;
    }

}
