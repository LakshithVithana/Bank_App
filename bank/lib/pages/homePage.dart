import 'package:bank/animation/ScaleRoute.dart';
import 'package:bank/pages/createAccount.dart';
import 'package:bank/pages/logIn.dart';
import 'package:bank/pages/createAccount.dart';
import 'package:flutter/material.dart';
import 'package:bank/init/sizeConfig.dart';
import 'package:auto_size_text/auto_size_text.dart';


class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         child: SafeArea(
           child: Column(
            children: <Widget>[
              Expanded(
                flex: 10,
                child: Center(
                  child: Image.asset('assets/images/B..png'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  child: CreateAccountWidget()
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  child: SignInButtonWidget()
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox()
                ),
            ],
           ),
         ),
       ),
    );
  }
}

class SignInButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockHeight = SizeConfig.blockSizeVertical;
    double blockWidth = SizeConfig.blockSizeHorizontal;
    double margin = blockWidth *5;

    return Container(
      width: blockWidth*80,
      height: blockHeight*8,
      decoration: new BoxDecoration(
        color: Colors.teal[900],
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: MaterialButton(
          highlightColor: Colors.transparent,
          splashColor: Colors.teal,
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
          child: AutoSizeText(
            "Log In",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontFamily: "WorkSans"),
            minFontSize: 14.0,
            maxLines: 1,
          ),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context)=>LogIn()),
            );
          }),
    );
  }
}

class CreateAccountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockHeight = SizeConfig.blockSizeVertical;
    double blockWidth = SizeConfig.blockSizeHorizontal;
    double margin = blockWidth *5;

    return Container(
      width: blockWidth*80,
      height: blockHeight*8,
      decoration: new BoxDecoration(
        color: Colors.teal[900],
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: MaterialButton(
          highlightColor: Colors.transparent,
          splashColor: Colors.teal,
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
          child: AutoSizeText(
            "Create account",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontFamily: "WorkSans"),
            minFontSize: 14.0,
            maxLines: 1,
          ),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context)=>CreateAccount()),
            );
          }
      ),
    );
  }
}
