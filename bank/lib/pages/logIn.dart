import 'package:flutter/material.dart';
import 'package:bank/init/sizeConfig.dart';
import 'package:bank/functions/Button.dart';

class LogIn extends StatefulWidget {
  LogIn({Key key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
                    title: 'LOG IN',
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
