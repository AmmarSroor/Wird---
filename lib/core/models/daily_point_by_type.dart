
class DailyPointsByType {
  String? pointTemplateLabel;
  int? ramadanRecordDate;
  int? totalDay;

  DailyPointsByType({
    this.pointTemplateLabel,
    this.ramadanRecordDate,
    this.totalDay,
  });

  DailyPointsByType.fromJson(Map<String, dynamic> json){
    pointTemplateLabel = json["point_template__label"];
    ramadanRecordDate = json["ramadan_record_date"];
    totalDay = json["total_day"];
  }

  Map<String, dynamic> toMap() => {
    "point_template__label": pointTemplateLabel,
    "ramadan_record_date": ramadanRecordDate,
    "total_day": totalDay,
  };
}

List<DailyPointsByType> dailyPointsByTypeFromJson(dynamic list) {
  return List<DailyPointsByType>.from(list.map((x) {
    return DailyPointsByType.fromJson(x);
  }));
}
