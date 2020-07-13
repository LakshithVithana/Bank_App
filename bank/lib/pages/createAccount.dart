import 'package:bank/pages/createAccountExtend.dart';
import 'package:bank/pages/logIn.dart';
import 'package:flutter/material.dart';
import 'package:bank/init/sizeConfig.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank/functions/Button.dart';

class CreateAccount extends StatefulWidget {
  CreateAccount({Key key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    double blockHeight = SizeConfig.blockSizeVertical;
    double blockWidth = SizeConfig.blockSizeHorizontal;
    double margin = blockWidth *5;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: blockHeight*50,
                  padding: EdgeInsets.only(right: margin*2),
                  child: Image.asset(
                    'assets/images/B..png',
                    alignment: Alignment.topRight,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: margin),
                  width: blockWidth*80,
                  child: TextField(
                    showCursor: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: margin),
                  width: blockWidth*80,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(margin),
                  child: ButtonWidget(
                    title: "Create Account",
                    pass: CreateAccountExtend(),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
