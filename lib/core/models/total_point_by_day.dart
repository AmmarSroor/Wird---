class TotalPointsByDay {
  int? ramadanRecordDate;
  int? totalDay;

  TotalPointsByDay({
    required this.ramadanRecordDate,
    required this.totalDay,
  });

  TotalPointsByDay.fromJson(Map<String, dynamic> json){
    ramadanRecordDate= json["ramadan_record_date"];
    totalDay= json["total_day"];
  }

  Map<String, dynamic> toMap() => {
    "ramadan_record_date": ramadanRecordDate,
    "total_day": totalDay,
  };
}

List<TotalPointsByDay> totalPointsByDayFromJson(List<dynamic> list) {
  return List<TotalPointsByDay>.from(list.map((x) {
    return TotalPointsByDay.fromJson(x);
  }));
}