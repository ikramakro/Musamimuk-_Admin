class CategoryModel {
  String? status;
  String? descriptionMassege;
  List<DbData>? dbData;

  CategoryModel({this.status, this.descriptionMassege, this.dbData});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    descriptionMassege = json['descriptionMassege'];
    if (json['dbData'] != null) {
      dbData = <DbData>[];
      json['dbData'].forEach((v) {
        dbData!.add(new DbData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['descriptionMassege'] = descriptionMassege;
    if (dbData != null) {
      data['dbData'] = dbData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DbData {
  int? id;
  String? type;
  String? name;
  String? createdAt;
  String? updatedAt;

  DbData({this.id, this.type, this.name, this.createdAt, this.updatedAt});

  DbData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    data['name'] = name;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
