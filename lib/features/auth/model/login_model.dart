class LoginModel {
  String? accessToken;
  String? refreshToken;
  UserModel? user;
  bool? status;
  LoginModel({this.accessToken, this.refreshToken, this.user, this.status});
  LoginModel.formJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    status = json['status'];
    if (json['user'] != null) {
      user = UserModel.fromJson(json['user']);
    }
  }
}

class UserModel {
  int? id;
  String? imagePath;
  String? userName;
  UserModel({this.id, this.imagePath, this.userName});
  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imagePath = json['image_path'];
    userName = json['username'];
  }
}
