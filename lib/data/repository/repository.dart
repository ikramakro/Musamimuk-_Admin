import 'dart:io';

import 'package:dio/dio.dart';

import '../apiClient/api_client.dart';
import '../models/base_model.dart';
import '../models/category_model.dart';
import '../models/login_response.dart';

class Repository {
  final _apiClient = ApiClient();
  Future<LoginResponse> login({Map<String, dynamic>? formData}) async {
    final response =
        await _apiClient.postlogin(baseUrl: 'user/login', parm: formData);
    return LoginResponse.fromJson(response.data);
  }

  Future<BaseModel> addShape({
    required String categoryId,
    required File shapeFile,
    required String shapeName,
    required String tags,
  }) async {
    try {
      FormData formData = FormData.fromMap({
        'category_id': categoryId,
        'shape_name': shapeName,
        'tags': tags,
        'shape': await MultipartFile.fromFile(shapeFile.path),
      });

      final response = await _apiClient.post1(
        baseUrl: 'shape/add',
        formdata: formData,
      );

      return BaseModel.fromJson(response.data);
    } catch (e) {
      // Handle the error accordingly
      throw Exception("Failed to upload shape: $e");
    }
  }

  Future<CategoryModel> getCategory({Map<String, dynamic>? formData}) async {
    final response =
        await _apiClient.get(baseUrl: 'shape/category', formData: formData);
    return CategoryModel.fromJson(response.data);
  }
}
