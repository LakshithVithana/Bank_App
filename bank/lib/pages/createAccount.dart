import 'package:bank/pages/createAccountExtend.dart';
import 'package:flutter/material.dart';
import 'package:bank/init/sizeConfig.dart';
import 'package:auto_size_text/auto_size_text.dart';

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

    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.only(right: margin*2),
                    child: Image.asset(
                      'assets/images/B..png',
                      alignment: Alignment.topRight,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
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
                ),
                Flexible(
                  flex: 1,
                  child: Container(
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
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(margin),
                    child: LogInButtonWidget()
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LogInButtonWidget extends StatelessWidget {
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
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: MaterialButton(
        highlightColor: Colors.transparent,
        splashColor: Colors.teal,
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
        child: AutoSizeText(
          "Create Account",
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
            MaterialPageRoute(builder: (context) => CreateAccountExtend()),
          );
        }
      ),
    );
  }
}

