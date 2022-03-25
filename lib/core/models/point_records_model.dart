
List<PointRecordsModel> pointRecordsFromJson(List<dynamic> list) {
  return List<PointRecordsModel>.from(list.map((x) {
    return PointRecordsModel.fromJson(x);
  }));
}

class PointRecordsModel {
  int? id;
  PointTemplate? pointTemplate;
  String? studentName;
  int? pointScoredUnits;
  //String? details;
  int? ramadanRecordDate;
  int? pointTotal;

  PointRecordsModel({
    required this.id,
    required this.pointTemplate,
    required this.studentName,
    required this.pointScoredUnits,
    //required this.details,
    required this.ramadanRecordDate,
    required this.pointTotal,
  });

  PointRecordsModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    pointTemplate = PointTemplate.fromJson(json["point_template"]);
    studentName = json['student'];
    pointScoredUnits = json['point_scored_units'];
    //details = json['details'];
    ramadanRecordDate = json['date'];
    pointTotal = json['point_total'];
  }

  Map<String, dynamic> toMap() => {
    // "id": id,
    //"point_template": pointTemplate,
    "point_template": pointTemplate!.id,
    "student": studentName,
    "point_scored_units": pointScoredUnits,
    //"details": details,
    "date": ramadanRecordDate,
    "point_total": pointTotal,
  };
}

class PointTemplate {
  int? id;
  String? label;
  String? description;
  String? formType;
  int? upperUnitsBound;
  int? lowerUnitsBound;
  int? pointsPerUnit;

  PointTemplate({
    required this.id,
    required this.label,
    required this.description,
    required this.formType,
    required this.upperUnitsBound,
    required this.lowerUnitsBound,
    required this.pointsPerUnit,
  });


  PointTemplate.fromJson(Map<String, dynamic> json){
    id = json['id'];
    label= json["label"];
    description= json["description"];
    formType= json["form_type"];
    upperUnitsBound= json["upper_units_bound"];
    lowerUnitsBound= json["lower_units_bound"];
    pointsPerUnit= json["points_per_unit"];
  }

  Map<String, dynamic> toMap() => {
    'id':id,
    "label": label,
    "description": description,
    "form_type": formType,
    "upper_units_bound": upperUnitsBound,
    "lower_units_bound": lowerUnitsBound,
    "points_per_unit": pointsPerUnit,
  };
}
