import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/chipviewaasamee_item_model.dart';
import '../models/fonts_model.dart';
import '../models/userprofile_item_model.dart';
part 'fonts_event.dart';
part 'fonts_state.dart';

class FontsBloc extends Bloc<FontsEvent, FontsState> {
  FontsBloc(FontsState initialState) : super(initialState) {
    on<FontsInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    // on<FetchListEvent>(_callGetLogoList);
  }
  _onInitialize(
    FontsInitialEvent event,
    Emitter<FontsState> emit,
  ) async {
    emit(state.copyWith(
        fontsModelObj: state.fontsModelObj?.copyWith(
      useractionsgridItemList: fillUseractionsgridItemList(),
      chipviewaasameeItemList: fillChipviewaasameeItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FontsState> emit,
  ) {
    List<ChipviewaasameeItemModel> newList =
        List<ChipviewaasameeItemModel>.from(
            state.fontsModelObj!.chipviewaasameeItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        fontsModelObj:
            state.fontsModelObj?.copyWith(chipviewaasameeItemList: newList)));
  }

  List<UseractionsgridItemModel> fillUseractionsgridItemList() {
    return [
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete"),
      UseractionsgridItemModel(
          username: "AA Sameer Almas",
          viewText: "View",
          editText: "Edit",
          deleteText: "Delete")
    ];
  }

  List<ChipviewaasameeItemModel> fillChipviewaasameeItemList() {
    return List.generate(2, (index) => ChipviewaasameeItemModel());
  }
}
