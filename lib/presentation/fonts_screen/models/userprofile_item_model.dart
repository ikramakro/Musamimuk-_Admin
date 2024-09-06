class UseractionsgridItemModel {
  UseractionsgridItemModel(
      {this.username, this.viewText, this.editText, this.deleteText, this.id}) {
    username = username ?? "AA Sameer Almas";
    viewText = viewText ?? "View";
    editText = editText ?? "Edit";
    deleteText = deleteText ?? "Delete";
    id = id ?? "";
  }
  String? username;
  String? viewText;
  String? editText;
  String? deleteText;
  String? id;
}
