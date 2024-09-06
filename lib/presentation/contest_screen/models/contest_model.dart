import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofilesection_item_model.dart';

class CertificatedesiItemModel {
  CertificatedesiItemModel(
      {this.certificateImag,
      this.certificateTitl,
      this.designCount,
      this.deleteText,
      this.id}) {
    certificateImag = certificateImag ?? ImageConstant.imgRectangle6189;
    certificateTitl = certificateTitl ?? "Certificate Design Competition";
    designCount = designCount ?? "44 Designs Submitted";
    deleteText = deleteText ?? "Delete";
    id = id ?? "";
  }
  String? certificateImag;
  String? certificateTitl;
  String? designCount;
  String? deleteText;
  String? id;
}
