
class UserModel {
   final List<num> prediction;
   const UserModel({
    required this.prediction,});




  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(prediction:json['Prediction'] );

  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Prediction'] = prediction;
    return map;
  }

}
