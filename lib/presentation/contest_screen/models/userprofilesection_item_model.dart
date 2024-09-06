import 'package:equatable/equatable.dart';
import 'package:musamimuk_admin/presentation/contest_screen/models/contest_model.dart';

import '../../../core/app_export.dart';

class ContestModel extends Equatable {
  ContestModel({this.certificatedesiItemList = const []});
  List<CertificatedesiItemModel> certificatedesiItemList;
  ContestModel copyWith(
      {List<CertificatedesiItemModel>? certificatedesiItemList}) {
    return ContestModel(
      certificatedesiItemList:
          certificatedesiItemList ?? this.certificatedesiItemList,
    );
  }

  @override
  List<Object?> get props => [certificatedesiItemList];
}
