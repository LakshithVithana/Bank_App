import 'package:bank/init/sizeConfig.dart';
import 'package:flutter/material.dart';

class CreateAccountExtend extends StatefulWidget {
  CreateAccountExtend({Key key}) : super(key: key);

  @override
  _CreateAccountExtendState createState() => _CreateAccountExtendState();
}

class _CreateAccountExtendState extends State<CreateAccountExtend> {
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    double blockHeight = SizeConfig.blockSizeVertical;
    double blockWidth = SizeConfig.blockSizeHorizontal;
    double marging = blockWidth*5;

    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.only(right: marging*2),
                    child: Image.asset(
                      'assets/images/B..png',
                      alignment: Alignment.topRight,
                    ),
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