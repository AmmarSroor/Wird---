import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/models/point_records_model.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/cubit/home_page_cubit/home_page_cubit.dart';
class BuildCustomDialog extends StatelessWidget {
  final String title;
  final String message;
  final double width;
  final double height;
  final PointRecordsModel recordsModel;
  BuildCustomDialog({
    required this.title,
    required this.message,
    required this.width,
    required this.height,
    required this.recordsModel,
  });
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.only(top: height * 0.02),
      contentPadding: EdgeInsets.zero,
      buttonPadding: EdgeInsets.zero,
      title: Container(
        child: Text(
          title,
          style: TextStyle(
            fontSize: width * 0.05,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      actions: <Widget>[
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Container(
                //width: width * 0.395,
                height: height * 0.06,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(10)),
                      side: BorderSide(
                          color: Color(HEX_BLUE_COLOR), width: 0.5)),
                  onPressed: () {
                    Navigator.pop(context);
                    recordsModel.pointScoredUnits = int.parse(editingController.text.isNotEmpty ? editingController.text : '0') <= (recordsModel.pointTemplate?.upperUnitsBound ?? 1)
                        ? int.parse(editingController.text.isNotEmpty ? editingController.text : '0')
                        : recordsModel.pointTemplate?.upperUnitsBound;
                    HomePageCubit.get(context).editOnPointRecordByID(
                      date: HomePageCubit.get(context).dropDownValueForResultPage!,
                      recordID: recordsModel.id!,
                      dataRecord: recordsModel,
                    );
                  },
                  color: Colors.white,
                  textColor: Color.fromRGBO(0, 160, 227, 1),
                  child: Text(SAVE, style: TextStyle(fontSize: width * 0.04,color: Color(HEX_BLUE_COLOR))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                //width: width * 0.4,
                height: height * 0.06,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(10)),
                      side: BorderSide(
                          color: Color(HEX_BLUE_COLOR), width: 0.5)),
                  onPressed: () => Navigator.of(context).pop(false),
                  color: Colors.white,
                  textColor: Color(HEX_BLUE_COLOR),
                  child: Text(CANCEL, style: TextStyle(fontSize: width * 0.04,color: Color(HEX_BLUE_COLOR))),
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
          maxWidth: width * 0.5,
          minWidth: width * 0.5,
        ),
        child: Container(
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(message),
              Container(
                width: width*0.24,
                height:height*0.06,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.bottom,
                  enabled: true,
                  decoration:InputDecoration(
                      border: InputBorder.none,
                      hintText: 'تعديل',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black38
                        )
                      ),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(
                        color: Color(HEX_RED_COLOR),
                      )),
                      hintStyle: TextStyle(fontSize: width*0.035)
                  ),
                  controller: editingController,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
