import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
class BuildConfirmEditDialog extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color? textColor;
  BuildConfirmEditDialog({
    required this.width,
    required this.height,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.only(top: height * 0.02),
      contentPadding: EdgeInsets.zero,
      buttonPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      actions: <Widget>[
        Row(
          children: [
            Expanded(
              child: Container(
                height: height * 0.06,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                      side: BorderSide(
                          color: Color(HEX_BLUE_COLOR), width: 0.5)),
                  onPressed: () => Navigator.of(context).pop(false),
                  color: Colors.white,
                  textColor: Color(HEX_BLUE_COLOR),
                  child: Text(OK, style: TextStyle(fontSize: width * 0.04,color: Color(HEX_BLUE_COLOR))),
                ),
              ),
            ),
          ],
        )
      ],
      content: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: height * 0.1,
          maxHeight: height * 0.1,
          maxWidth: width * 0.40,
          minWidth: width * 0.40,
        ),
        child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: width * 0.03
              ),
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}
