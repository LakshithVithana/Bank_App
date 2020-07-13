import 'package:bank/pages/createAccount.dart';
import 'package:bank/pages/logIn.dart';
import 'package:flutter/material.dart';
import 'package:bank/functions/Button.dart';
import 'package:bank/init/sizeConfig.dart';


class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
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
                margin: EdgeInsets.all(margin),
                child: ButtonWidget(
                  title: 'Create Account',
                  pass: CreateAccount(),
                )
              ),
              Container(
                margin: EdgeInsets.all(margin),
                child: ButtonWidget(
                  title: 'Log In',
                  pass: LogIn(),
                ),
              ),
              SizedBox(),
             ],
            ),
          ),
        ),
      ),
    );
  }
}

