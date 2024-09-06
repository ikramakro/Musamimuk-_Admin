import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/add_png_images_model.dart';
part 'add_png_images_event.dart';
part 'add_png_images_state.dart';

class AddPngImagesBloc extends Bloc<AddPngImagesEvent, AddPngImagesState> {
  AddPngImagesBloc(AddPngImagesState initialState) : super(initialState) {
    on<AddPngImagesInitialEvent>(_onInitialize);
    // on<CreateAddEvent>(_callAddPng);
  }
  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  _onInitialize(
    AddPngImagesInitialEvent event,
    Emitter<AddPngImagesState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      nameController: TextEditingController(),
      writerelatedController: TextEditingController(),
    ));
    emit(state.copyWith(
        addPngImagesModelObj: state.addPngImagesModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      dropdownItemList1: fillDropdownItemList1(),
    )));
  }
}
