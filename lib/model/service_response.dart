import 'package:user_app/model/service_model.dart';

import 'pagination_model.dart';

class ServiceResponse {
  List<Service>? data;
  Pagination? pagination;

  ServiceResponse({this.data, this.pagination});

  factory ServiceResponse.fromJson(Map<String, dynamic> json) {
    return ServiceResponse(
      data: json['data'] != null ? (json['data'] as List).map((i) => Service.fromJson(i)).toList() : null,
      pagination: json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    return data;
  }
}
