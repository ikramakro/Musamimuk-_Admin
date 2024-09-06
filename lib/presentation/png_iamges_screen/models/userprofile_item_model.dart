class UserprofileItemModel {
  UserprofileItemModel({this.viewOne, this.edit, this.delete, this.id}) {
    viewOne = viewOne ?? "View";
    edit = edit ?? "Edit";
    delete = delete ?? "Delete";
    id = id ?? "";
  }
  String? viewOne;
  String? edit;
  String? delete;
  String? id;
}
