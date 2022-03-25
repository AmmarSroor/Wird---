
class InputDataRecordsModel {
  int? pointTemplateID;
  int? pointScoredUnits;
  int? ramadanRecordDate;

  InputDataRecordsModel({
    required this.pointTemplateID,
    required this.pointScoredUnits,
    required this.ramadanRecordDate,
  });

  InputDataRecordsModel.fromJson(Map<String, dynamic> json){
    pointTemplateID = json['point_template'];
    pointScoredUnits = json['point_scored_units'];
    ramadanRecordDate = json['ramadan_record_date'];
  }

  Map<String, dynamic> toMap() => {
    "point_template": pointTemplateID,
    "point_scored_units": pointScoredUnits,
    "ramadan_record_date": ramadanRecordDate,
  };
}