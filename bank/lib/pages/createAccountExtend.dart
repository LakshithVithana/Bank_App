import 'package:bank/init/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:country_list_pick/country_list_pick.dart';

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

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: blockHeight*50,
                  padding: EdgeInsets.only(right: marging*2),
                  child: Image.asset(
                    'assets/images/B..png',
                    alignment: Alignment.topRight,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: marging),
                  width: blockWidth*80,
                  child: TextField(
                    showCursor: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      labelText: 'Full Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: marging),
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
                  child: CountryListPick(
                    isShowFlag: true,
                    isShowTitle: true,
                    isDownIcon: false,
                    isShowCode: true,
                    initialSelection: '+1',
                    onChanged: (CountryCode code) {
                      // name of country
                      print(code.name);
                    },
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