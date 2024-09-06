import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';
import '../models/contest_model.dart';
import '../models/userprofilesection_item_model.dart';

part 'contest_event.dart';
part 'contest_state.dart';

/// A bloc that manages the state of a Contest according to the event that is dispatched to it.
// ignore_for_file: must_be_immutable
class ContestBloc extends Bloc<ContestEvent, ContestState> {
  ContestBloc(ContestState initialState) : super(initialState) {
    on<ContestInitialEvent>(_onInitialize);
    // on<FetchListEvent>(_callGetLogoList);
  }

  // final _repository = Repository();
  // var getGetLogoListResp = GetGetLogoListResp();

  List<CertificatedesiItemModel> fillCertificatedesiItemList() {
    return [
      CertificatedesiItemModel(
        certificateImag: ImageConstant.imgRectangle6189,
        certificateTitl: "Certificate Design Competition",
        designCount: "44 Designs Submitted",
        deleteText: "Delete",
      ),
      CertificatedesiItemModel(
        certificateImag: ImageConstant.imgRectangle6194,
        certificateTitl: "Daily Calendar Competition",
        designCount: "12 Designs Submitted",
        deleteText: "Delete",
      ),
    ];
  }

  /// Calls the https://api.pixlerpro.com/api/logo/list API and triggers a [FetchListEvent] event on the [ContestBloc] bloc.
  ///
  /// The [BuildContext] parameter represents current [BuildContext]
  _onInitialize(
    ContestInitialEvent event,
    Emitter<ContestState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
      contestModelObj: state.contestModelObj?.copyWith(
        certificatedesiItemList: fillCertificatedesiItemList(),
      ),
    ));
    // add(
    //   FetchListEvent(
    //     onFetchListEventSuccess: () {
    //       _onGetLogoListEventSuccess();
    //     },
    //     onFetchListEventError: () {
    //       _onGetLogoListEventError();
    //     },
    //   ),
    // );
  }
}
