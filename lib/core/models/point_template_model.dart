
List<PointTemplateModel> pointTemplateFromJson(List<dynamic> list) {
  return List<PointTemplateModel>.from(list.map((x) {
    return PointTemplateModel.fromJson(x);
  }));
}

// Map<String ,List<PointTemplateModel>> pointTemplateFromJson(Map data) {
//   return Map<String ,List<PointTemplateModel>>.from(data.map((key, value){
//     List<PointTemplateModel> templateData = List<PointTemplateModel>.from(value.map((x) {
//       return PointTemplateModel.fromJson(x);
//     }));
//     return Map.from();
//   }));
// }

class PointTemplateModel {
  int? id;
  int? section;// لترتيبهم ولكن ليس لها فائدة لانه اسامة رجعهم مرتبين بالأصل
  bool? isActive;
  bool? isShown;
  int? orderInSection;
  String? customDays;
  String? label;
  String? description;
  String? formType;
  int? upperUnitsBound;
  int? lowerUnitsBound;
  int? pointsPerUnit;
  String? userInput;

  PointTemplateModel({
    required this.id,
    required this.section,
    required this.isActive,
    required this.isShown,
    required this.orderInSection,
    required this.customDays,
    required this.label,
    required this.description,
    required this.formType,
    required this.upperUnitsBound,
    required this.lowerUnitsBound,
    required this.pointsPerUnit,
    required this.userInput,
  });

  PointTemplateModel.fromJson(Map<String, dynamic> json){
    id= json["id"];
    section= json["section"];
    isActive= json["is_active"];
    isShown= json["is_shown"];
    orderInSection = json["order_in_section"];
    customDays= json["custom_days"];
    label= json["label"];
    description= json["description"];
    formType= json["form_type"];
    upperUnitsBound= json["upper_units_bound"];
    lowerUnitsBound= json["lower_units_bound"];
    pointsPerUnit= json["points_per_unit"];
    userInput = json["user_input"];
  }

  Map<String, dynamic> toMap() => {
    "id": id,
    "section": section,
    "is_active": isActive,
    "is_shown": isShown,
    "order_in_section": orderInSection,
    "custom_days": customDays,
    "upper_units_bound": upperUnitsBound,
    "lower_units_bound": lowerUnitsBound,
    "label": label,
    "description": description,
    "form_type": formType,
    "points_per_unit" :pointsPerUnit,
    "user_input" : userInput,
  };
}