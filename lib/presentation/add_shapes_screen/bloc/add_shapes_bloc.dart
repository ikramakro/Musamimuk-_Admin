import 'dart:io';

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import '../../../core/app_export.dart';
import '../../../data/repository/repository.dart'; // Import your repository
import '../models/add_shapes_model.dart';

part 'add_shapes_event.dart';
part 'add_shapes_state.dart';

class AddShapesBloc extends Bloc<AddShapesEvent, AddShapesState> {
  final ImagePicker _picker = ImagePicker(); // ImagePicker instance
  final Repository _repository; // Repository instance

  AddShapesBloc(super.initialState, this._repository) {
    on<AddShapesInitialEvent>(_onInitialize);
    on<PickImageEvent>(_pickImage);
    on<FetchCategoriesEvent>(_fetchCategories); // Event for fetching categories
    on<SubmitShapeEvent>(_submitShape); // Event for submitting shape data
    on<OnChangeDropDownEvent>(_onChangeDropDown);
  }

  void _onChangeDropDown(
    OnChangeDropDownEvent event,
    Emitter<AddShapesState> emit,
  ) {
    final selectedCategory =
        state.addShapesModelObj?.dropdownItemList.firstWhere(
      (item) => item.id == event.title,
    );

    emit(state.copyWith(selectedCategory: selectedCategory,selectedCategoryid: event.title));
  }

  Future<void> _pickImage(
    PickImageEvent event,
    Emitter<AddShapesState> emit,
  ) async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        emit(state.copyWith(imagePath: image.path));
        event.onPickImageSuccess?.call();
      }
    } catch (e) {
      print("Error picking image: $e");
      event.onPickImageError?.call();
    }
  }

  Future<void> _fetchCategories(
    FetchCategoriesEvent event,
    Emitter<AddShapesState> emit,
  ) async {
    try {
      final categories = await _repository.getCategory(); // Fetch categories
      List<SelectionPopupModel> dropdownItems = categories.dbData!.map((data) {
        return SelectionPopupModel(
          id: data.id,
          title: data.name ?? '',
        );
      }).toList();

      emit(state.copyWith(
        addShapesModelObj: state.addShapesModelObj?.copyWith(
          dropdownItemList: dropdownItems,
        ),
      ));
    } catch (e) {
      print("Error fetching categories: $e");
    }
  }

  Future<void> _submitShape(
    SubmitShapeEvent event,
    Emitter<AddShapesState> emit,
  ) async {
    try {
      final selectedCategory = state.selectedCategory;
      final imagePath = state.imagePath;
      final nameController = state.nameController?.text ?? '';
      final tagsController = state.writerelatedController?.text ?? '';

      if (selectedCategory != null && imagePath != null) {
        final response = await _repository.addShape(
          categoryId: selectedCategory.id.toString(),
          shapeFile: File(imagePath),
          shapeName: nameController,
          tags: tagsController,
        );

        if (response.status == "successfully") {
          // Handle success, like showing a message or navigating away
        } else {
          // Handle error
        }
      } else {
        print("Category or image path is null");
      }
    } catch (e) {
      print("Error submitting shape: $e");
    }
  }

  _onInitialize(
    AddShapesInitialEvent event,
    Emitter<AddShapesState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      nameController: TextEditingController(),
      writerelatedController: TextEditingController(),
    ));
    add(FetchCategoriesEvent()); // Fetch categories on initialization
  }
}
