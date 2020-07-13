import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank/init/sizeConfig.dart';

class ButtonWidget extends StatelessWidget {
  
  final String title;
  final Widget pass;
  ButtonWidget({this.title,this.pass});

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
            title,
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
              MaterialPageRoute(builder: (context)=>pass),
            );
          }
      ),
    );
  }
}
