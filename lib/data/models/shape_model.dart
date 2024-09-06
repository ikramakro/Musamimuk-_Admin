class ShapeModel {
  String? status;
  String? descriptionMassege;
  List<DbData>? dbData;

  ShapeModel({this.status, this.descriptionMassege, this.dbData});

  ShapeModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    descriptionMassege = json['descriptionMassege'];
    if (json['dbData'] != null) {
      dbData = <DbData>[];
      json['dbData'].forEach((v) {
        dbData!.add(DbData.fromJson(v));
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
  int? categoryId;
  String? shape;
  String? shapeName;
  String? tags;
  String? createdAt;
  String? updatedAt;
  Category? category;

  DbData(
      {this.id,
      this.categoryId,
      this.shape,
      this.shapeName,
      this.tags,
      this.createdAt,
      this.updatedAt,
      this.category});

  DbData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    shape = json['shape'];
    shapeName = json['shape_name'];
    tags = json['tags'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['category_id'] = categoryId;
    data['shape'] = shape;
    data['shape_name'] = shapeName;
    data['tags'] = tags;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    return data;
  }
}

class Category {
  int? id;
  String? name;

  Category({this.id, this.name});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
