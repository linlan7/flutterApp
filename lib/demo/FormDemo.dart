import 'package:dyxflutter/demo/PostShow.dart';
import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  const FormDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.black),
          child: Container(
            padding: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RegisterFormDemo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterFormDemo extends StatefulWidget {
  const RegisterFormDemo({Key? key}) : super(key: key);

  @override
  _RegisterFormDemoState createState() => _RegisterFormDemoState();
}

class _RegisterFormDemoState extends State<RegisterFormDemo> {
  final registerFormKey = GlobalKey<FormState>();
  String? username, password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            onSaved: (value) {
              username = value;
            },
            validator: validatorUserName,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: '',
            ),
            onSaved: (value) {
              password = value;
            },
            validator: validatorPassword,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              color: Theme.of(context).accentColor,
              child: Text(
                '注册',
                style: TextStyle(color: Colors.white),
              ),
              elevation: 0.0,
              onPressed: () {
                if (registerFormKey.currentState?.validate() ?? false) {
                  registerFormKey.currentState?.save();
                  debugPrint("username$username");
                  debugPrint("password$password");
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Icon(Icons.flag,color: Colors.red,),
                  ));
                }
              },
            ),
          )
        ],
      ),
    );
  }

  String? validatorUserName(value) {
    if (value.isEmpty) {
      return "必须输入username";
    }
    return null;
  }

  String? validatorPassword(value) {
    if (value.isEmpty) {
      return "必须输入password";
    }
    return null;
  }
}

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final editingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    editingController.addListener(() {
      var text = editingController.text;
      debugPrint(text);
    });
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    editingController.text = "213";
  }

  @override
  void dispose() {
    editingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: editingController,
      onSubmitted: (value) {
        //Fluttertoast.showToast(msg: "Hello world",textColor: Colors.black);
        debugPrint(value);
      },
      decoration: InputDecoration(
        icon: Icon(
          Icons.subject,
          color: Colors.black,
        ),
        labelText: 'title',
        labelStyle: TextStyle(color: Colors.black),
        hintText: "回车以提交表单",
        // border: InputBorder.none//去除下划线
        // border: OutlineInputBorder()//四周都有横线的风格
        filled: true,
        //添加灰色背景
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  const ThemeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
