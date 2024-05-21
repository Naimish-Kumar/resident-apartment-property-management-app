import 'dart:async';
import 'dart:convert';
import 'package:grpc/grpc.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/Api/session.dart';
import 'package:user_app/component/loader_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/model/dashboard_model.dart';
import 'package:user_app/screens/dashboard/component/category_component.dart';
import 'package:user_app/screens/dashboard/component/slider_and_location_component.dart';
import 'package:user_app/screens/dashboard/home_screen.dart';
import 'package:user_app/src/generated/authentication.pbgrpc.dart';
import 'package:user_app/src/generated/docbanner.pbgrpc.dart';
import 'package:user_app/utils/colors.dart';
import 'package:user_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../Api/rest_apis.dart';
import '../../../component/appdrawer.dart';

class DashboardFragment extends StatefulWidget {
  @override
  _DashboardFragmentState createState() => _DashboardFragmentState();
}

class _DashboardFragmentState extends State<DashboardFragment> {
  late List<SliderModel> sliders = [];
  late List<Category> categorys = [];
  String role = "";
  bool isviewall = false;
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<FutureOr<void>> _provider(
      Map<String, String> metadata, String uri) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString("AccessToken") ?? "";
    metadata['Authorization'] = "Bearer $token";
  }

  void init() async {

    try {
       SharedPreferences prefs = await SharedPreferences.getInstance();
    RpcDocBannerClient client = RpcDocBannerClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));

    final ResDocBannerLookupModel data = new ResDocBannerLookupModel();
    data.residenceId = prefs.getString("rid") ?? "";
    appStore.setLoading(true);
    DocBannersList response = await client.getAllDocBanners(data,
        options: (CallOptions(providers: [_provider])));

    // ignore: unnecessary_null_comparison
    if (response.items.isNotEmpty) {
      var j = 1;
      setState(() {
        // datalist = response;
        for (var i = 0; i < response.items.length; i++) {
          j++;
          SliderModel s1 = new SliderModel();
          s1.id = j;
          s1.title = "Interior Painting";
          s1.type = "service";
          s1.type_id = "6";
          s1.status = 1;
          s1.description = null;
          s1.service_name = "Trendy Interior WallPainting";
          List<int> imageBytes = response.items[i].docBannerDocs[0].file;
          var base64Image = base64Encode(imageBytes);
          s1.slider_image = base64Image;
          sliders.add(s1);
        }
      });
      appStore.setLoading(false);
    } else {
      appStore.setLoading(false);
      toast(response.error.message);
    }

    role = (prefs.getString("role") ?? "");
    } catch (e) {

       SharedPreferences prefs = await SharedPreferences.getInstance();
       RpcAuthenticationClient client = RpcAuthenticationClient(ClientChannel(
          Url,
          port: Port,
          options: const ChannelOptions(
              credentials: ChannelCredentials.insecure())));

      final AuthenticationRequest data = new AuthenticationRequest();
      data.email = (prefs.getString("email") ?? "");
      data.password =(prefs.getString("password") ?? "");
      AppAuthenticationResponse response =
          await client.appUserAuthenticate(data);
      log("Login Response $response");
      // ignore: unnecessary_null_comparison
      if (response.accessToken != "") {
        //Store Token
        String yourToken = response.accessToken;
        Map<String, dynamic>? decodedToken = JwtDecoder.decode(yourToken);
        var uid = decodedToken!['id'];
        var rid = decodedToken['residenceId'];
        var uname = decodedToken['username'];
        var role = decodedToken[
            'http://schemas.microsoft.com/ws/2008/06/identity/claims/role'];
        Session.settoken(response.accessToken);
        Session.setrole(uid, rid, uname, role, data.email,data.password);
        
        appStore.setLoading(false);
        HomeScreen().launch(context,
            isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide);
      } else {
        appStore.setLoading(false);
        toast(response.error.message);
      }
      
    }
   
    //Slider Added
    // SliderModel s1 = new SliderModel();
    // s1.id = 1;
    // s1.title = "Interior Painting";
    // s1.type = "service";
    // s1.type_id = "6";
    // s1.status = 1;
    // s1.description = null;
    // s1.service_name = "Trendy Interior WallPainting";
    // s1.slider_image = "images/app_images/kl1.jpg";

    // sliders.add(s1);
    // SliderModel s2 = new SliderModel();
    // s2.id = 2;
    // s2.title = "Interior Painting";
    // s2.type = "service";
    // s2.type_id = "6";
    // s2.status = 1;
    // s2.description = null;
    // s2.service_name = "Trendy Interior WallPainting";
    // s2.slider_image = "images/app_images/kl2.jpg";
    // sliders.add(s2);
    // SliderModel s3 = new SliderModel();
    // s3.id = 3;
    // s3.title = "Interior Painting";
    // s3.type = "service";
    // s3.type_id = "6";
    // s3.status = 1;
    // s3.description = null;
    // s3.service_name = "Trendy Interior WallPainting";
    // s3.slider_image = "images/app_images/kl3.jpg";
    // sliders.add(s3);
    // SliderModel s4 = new SliderModel();
    // s4.id = 4;
    // s4.title = "Interior Painting";
    // s4.type = "service";
    // s4.type_id = "6";
    // s4.status = 1;
    // s4.description = null;
    // s4.service_name = "Trendy Interior WallPainting";
    // s4.slider_image = "images/app_images/kl4.jpg";
    // sliders.add(s4);

    //User Category
    Category cat1 = new Category(
        icon: Icons.add_home_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 1,
        is_featured: 1,
        name: "Add Property",
        status: 1,
        isSelected: false,
        services: 1);
    Category cat2 = new Category(
        icon: Icons.person_add_alt_1_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 2,
        is_featured: 1,
        name: "Add Tenant",
        status: 1,
        isSelected: false,
        services: 1);
    Category cat3 = new Category(
        icon: Icons.groups_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 3,
        is_featured: 1,
        name: "Visitor",
        status: 1,
        isSelected: false,
        services: 1);
    Category cat4 = new Category(
        icon: Icons.campaign_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 4,
        is_featured: 1,
        name: "Announcement",
        status: 1,
        isSelected: false,
        services: 1);
    Category cat5 = new Category(
        icon: Icons.gpp_maybe_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 5,
        is_featured: 1,
        name: "Panic",
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
    //Guard Category
      Category cat7 = new Category(
          icon: Icons.qr_code,
          category_image: "",
          color: "",
          description: "",
          id: 7,
          is_featured: 1,
          name: "Pre Visitor",
          status: 1,
          isSelected: false,
          services: 1);

    Category cat8 = new Category(
        icon: Icons.add_moderator_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 7,
        is_featured: 1,
        name: "Visitors",
        status: 1,
        isSelected: false,
        services: 1);

    Category cat9 = new Category(
        icon: Icons.qr_code_2_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 7,
        is_featured: 1,
        name: "Check Point",
        status: 1,
        isSelected: false,
        services: 1);

     Category cat10 = new Category(
         icon: Icons.car_rental_outlined,
         category_image: "",
         color: "",
         description: "",
         id: 7,
         is_featured: 1,
         name: "Parking",
         status: 1,
         isSelected: false,
         services: 1);

    Category cat11 = new Category(
        icon: Icons.notifications_none_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 7,
        is_featured: 1,
        name: "Over Night Parking",
        status: 1,
        isSelected: false,
        services: 1);

     Category cat12 = new Category(
         icon: Icons.emergency_outlined,
         category_image: "",
         color: "",
         description: "",
         id: 6,
         is_featured: 1,
         name: "Panic Alert",
         status: 1,
         isSelected: false,
         services: 1);

//Technician Category

    Category cat13 = new Category(
        icon: Icons.content_paste_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 6,
        is_featured: 1,
        name: "New Work",
        status: 1,
        isSelected: false,
        services: 1);
    Category cat14 = new Category(
        icon: Icons.build_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 6,
        is_featured: 1,
        name: "Active Work",
        status: 1,
        isSelected: false,
        services: 1);

    Category cat15 = new Category(
        icon: Icons.article_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 6,
        is_featured: 1,
        name: "Report",
        status: 1,
        isSelected: false,
        services: 1);

    if (role == "User") {
      categorys.add(cat1);
      categorys.add(cat2);
      categorys.add(cat3);
      categorys.add(cat4);
      categorys.add(cat5);
      categorys.add(cat6);
      isviewall = true;
    }
    if (role == "SecurityGuard") {
      categorys.add(cat7);
      categorys.add(cat8);
      categorys.add(cat9);
      categorys.add(cat10);
      categorys.add(cat11);
      categorys.add(cat12);
    }
    if (role == "Technician") {
      categorys.add(cat13);
      categorys.add(cat14);
      categorys.add(cat15);
    }
    appStore.setLoading(false);

    // afterBuildCreated(() {
    //   setStatusBarColor(Colors.transparent);
    // });
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      drawer: AppDrawer(),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
          return await 2.seconds.delay;
        },
        child: Observer(
          builder: (_) {
            return FutureBuilder<DashboardResponse>(
              future: userDashboard(
                  isCurrentLocation: appStore.isCurrentLocation,
                  lat: getDoubleAsync(LATITUDE),
                  long: getDoubleAsync(LONGITUDE)),
              builder: (context, snap) {
                return Stack(
                  children: [
                    SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SliderLocationComponent(
                              sliderList: sliders.validate(),
                              notification_read_count: 10),
                          32.height,
                          if (categorys.isNotEmpty)
                            CategoryComponent(
                                categoryList: categorys, isViewAll: isviewall),
                          24.height,
                        ],
                      ),
                    ),
                    

                    Observer(
                        builder: (BuildContext context) =>
                            LoaderWidget().visible(appStore.isLoading))
                  ],
                );

                
              },
            );
          },
        ),
      ),
    );
  }
}
