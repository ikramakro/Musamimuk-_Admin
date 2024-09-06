part of 'png_images_bloc.dart';

class PngImagesState extends Equatable {
  PngImagesState({this.searchController, this.shapesModelObj});
  TextEditingController? searchController;
  PngImagesModel? shapesModelObj;
  @override
  List<Object?> get props => [searchController, shapesModelObj];
  PngImagesState copyWith({
    TextEditingController? searchController,
    PngImagesModel? shapesModelObj,
  }) {
    return PngImagesState(
      searchController: searchController ?? this.searchController,
      shapesModelObj: shapesModelObj ?? this.shapesModelObj,
    );
  }
}
