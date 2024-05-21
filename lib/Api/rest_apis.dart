import 'package:user_app/model/dashboard_model.dart';
import 'package:flutter/material.dart';

//region User Api
Future<DashboardResponse> userDashboard(
    {bool isCurrentLocation = false, double? lat, double? long}) async {
  DashboardResponse? _dashboardResponse;

  late List<SliderModel> sliders = [];
  late List<Category> categorys = [];
  //Slider Added
  SliderModel s1 = new SliderModel();
  s1.id = 1;
  s1.title = "Interior Painting";
  s1.type = "service";
  s1.type_id = "6";
  s1.status = 1;
  s1.description = null;
  s1.service_name = "Trendy Interior WallPainting";
  s1.slider_image = "images/app_images/kl1.jpg";

  sliders.add(s1);
  SliderModel s2 = new SliderModel();
  s2.id = 2;
  s2.title = "Interior Painting";
  s2.type = "service";
  s2.type_id = "6";
  s2.status = 1;
  s2.description = null;
  s2.service_name = "Trendy Interior WallPainting";
  s2.slider_image = "images/app_images/kl2.jpg";
  sliders.add(s2);
  SliderModel s3 = new SliderModel();
  s3.id = 3;
  s3.title = "Interior Painting";
  s3.type = "service";
  s3.type_id = "6";
  s3.status = 1;
  s3.description = null;
  s3.service_name = "Trendy Interior WallPainting";
  s3.slider_image = "images/app_images/kl3.jpg";
  sliders.add(s3);
  SliderModel s4 = new SliderModel();
  s4.id = 4;
  s4.title = "Interior Painting";
  s4.type = "service";
  s4.type_id = "6";
  s4.status = 1;
  s4.description = null;
  s4.service_name = "Trendy Interior WallPainting";
  s4.slider_image = "images/app_images/kl4.jpg";
  sliders.add(s4);

  Category cat1 = new Category(
      icon: Icons.person_add_alt_1_outlined,
      category_image: "",
      color: "",
      description: "",
      id: 1,
      is_featured: 1,
      name: "Add Tenant",
      status: 1,
      isSelected: false,
      services: 1);
  Category cat2 = new Category(
      icon: Icons.wallet_outlined,
      category_image: "",
      color: "",
      description: "",
      id: 2,
      is_featured: 1,
      name: "Fees",
      status: 1,
      isSelected: false,
      services: 1);
  Category cat3 = new Category(
      icon: Icons.event_available_outlined,
      category_image: "",
      color: "",
      description: "",
      id: 3,
      is_featured: 1,
      name: "Event",
      status: 1,
      isSelected: false,
      services: 1);
  Category cat4 = new Category(
      icon: Icons.groups_outlined,
      category_image: "",
      color: "",
      description: "",
      id: 4,
      is_featured: 1,
      name: "Visitor",
      status: 1,
      isSelected: false,
      services: 1);
  Category cat5 = new Category(
      icon: Icons.home_repair_service_outlined,
      category_image: "",
      color: "",
      description: "",
      id: 5,
      is_featured: 1,
      name: "Faclity",
      status: 1,
      isSelected: false,
      services: 1);
  Category cat6 = new Category(
      icon: Icons.emergency_outlined,
      category_image: "",
      color: "",
      description: "",
      id: 6,
      is_featured: 1,
      name: "Emergency",
      status: 1,
      isSelected: false,
      services: 1);
  Category cat7 = new Category(
      icon: Icons.remove_red_eye,
      category_image: "",
      color: "",
      description: "",
      id: 7,
      is_featured: 1,
      name: "Ajith7",
      status: 1,
      isSelected: false,
      services: 1);
  categorys.add(cat1);
  categorys.add(cat2);
  categorys.add(cat3);
  categorys.add(cat4);
  categorys.add(cat5);
  categorys.add(cat6);
  categorys.add(cat7);
  _dashboardResponse!.category = categorys;
  _dashboardResponse.slider = sliders;

  return _dashboardResponse;
}
