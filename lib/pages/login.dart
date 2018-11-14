import 'package:flutter/material.dart';
// import '../provider/user.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<LoginPage> {
  final LOGO_WIDTH = 200.0;
  final CARD_WIDTH = 300.0;
  final CARD_HEIGHT = 300.0;
  var title = 'login';
  var _userHelperText = '用户登录名';
  var _pwdHelperText = '登录密码';
  TextEditingController _usernameCtrl = new TextEditingController();
  TextEditingController _passwordCtrl = new TextEditingController();

  // 清空用户名
  void clearText() {
    setState(() {
      _usernameCtrl.text = '';
      _passwordCtrl.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text(this.title)),
        body: Container(
          alignment: Alignment.center,
          child: new Column(children: [
            new TextField(
              controller: this._usernameCtrl,
              scrollPadding: EdgeInsets.only(left: 1000.0),
              decoration: new InputDecoration(
                  icon: new Icon(Icons.person),
                  labelText: '请输入用户名',
                  helperText: this._userHelperText),
            ),
            new TextField(
              controller: this._passwordCtrl,
              decoration: new InputDecoration(
                  icon: new Icon(Icons.lock),
                  labelText: '请输入密码',
                  helperText: this._pwdHelperText),
            ),
            new Builder(builder: (BuildContext context) {
              return new RaisedButton(
                color: Colors.deepOrange,
                highlightColor: Colors.deepOrangeAccent,
                disabledColor: Colors.deepOrangeAccent,
                onPressed: () {
                  if (_usernameCtrl == _passwordCtrl) {
                    Scaffold.of(context).showSnackBar(
                        new SnackBar(content: new Text('login success')));
                  } else {
                    Scaffold.of(context).showSnackBar(
                        new SnackBar(content: new Text('login faild')));
                  }
                  clearText();
                },
                child: new Text('login',
                    style: new TextStyle(color: Colors.white)),
              );
            })
          ]),
        ));
  }
}
