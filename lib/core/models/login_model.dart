class UserDataModel {
  String? username;
  String? firstName;
  String? lastName;
  String? profilePhoto;

  UserDataModel({
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.profilePhoto,
  });

  UserDataModel.fromJson(Map<String,dynamic>json)
  {
    username=json['username'];
    firstName=json['first_name'];
    lastName=json['last_name'];
    profilePhoto=json['profile_photo'];
  }

  Map<String,dynamic> toMap(){
    return {
      'username':username,
      'first_name':firstName,
      'last_name':lastName,
      'profile_photo':profilePhoto,
    };
  }
}