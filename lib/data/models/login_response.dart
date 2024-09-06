class LoginResponse {
  String? status;
  String? descriptionMessage;
  DbData? dbData;
  String? errorDescription;

  LoginResponse({this.status, this.descriptionMessage, this.dbData});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];

    if (json['status'] == 'successfully') {
      descriptionMessage = json['descriptionMassege'];
      dbData = json['dbData'] != null ? DbData.fromJson(json['dbData']) : null;
    } else {
      dbData = null;
      errorDescription = json['errorDescription'];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['descriptionMassege'] = descriptionMessage;
    if (dbData != null) {
      data['dbData'] = dbData!.toJson();
    }
    return data;
  }
}

class DbData {
  String? token;
  User? user;

  DbData({this.token, this.user});

  DbData.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  String? image;
  int? role;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.name,
      this.email,
      this.image,
      this.role,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    image = json['image'];
    role = json['role'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['image'] = image;
    data['role'] = role;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
