class TotalPointsByType {
  String? pointTemplateLabel;
  int? totalPoint;

  TotalPointsByType({
    required this.pointTemplateLabel,
    required this.totalPoint,
  });

  TotalPointsByType.fromJson(Map<String, dynamic> json){
    pointTemplateLabel = json["point_template__label"];
    totalPoint = json["total_point"];
  }

  Map<String, dynamic> toMap() => {
    "point_template__label": pointTemplateLabel,
    "total_point": totalPoint,
  };
}