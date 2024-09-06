class BaseModel {
  String? status;
  String? descriptionMassege;
  String? errorDescription;

  BaseModel({this.status, this.descriptionMassege, this.errorDescription});

  BaseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['status'] == 'successfully') {
      descriptionMassege = json['descriptionMassege'];
      errorDescription = null;
    } else {
      descriptionMassege = null;
      errorDescription = json['errorDescription'];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['descriptionMassege'] = descriptionMassege;
    data['errorDescription'] = errorDescription;
    return data;
  }
}
