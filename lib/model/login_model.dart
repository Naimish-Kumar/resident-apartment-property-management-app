import 'package:user_app/model/user_model.dart';

class LoginResponse {
  UserData? data;
  bool? isUserExist;
  bool? status;

  LoginResponse({this.data, this.isUserExist, this.status});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      data: json['data'] != null ? UserData.fromJson(json['data']) : null,
      isUserExist: json['is_user_exist'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['is_user_exist'] = this.isUserExist;
    data['status'] = this.status;
    return data;
  }
}
