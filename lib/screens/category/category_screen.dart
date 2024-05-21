import 'package:user_app/component/back_widget.dart';
import 'package:user_app/component/loader_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/model/dashboard_model.dart';
import 'package:user_app/screens/Panic/panic.dart';
import 'package:user_app/screens/Panic/paniclist.dart';
import 'package:user_app/screens/account/renovation.dart';
import 'package:user_app/screens/account/reports.dart';
import 'package:user_app/screens/announcement/announcement_screen.dart';
import 'package:user_app/screens/announcement/notice_screen.dart';
import 'package:user_app/screens/checkpoint/scancheckpoint.dart';
import 'package:user_app/screens/commitee/commiteepeople.dart';
import 'package:user_app/screens/complaint/complaintlist_screen.dart';
import 'package:user_app/screens/dashboard/home_screen.dart';
import 'package:user_app/screens/dashboard/widget/category_widget.dart';
import 'package:user_app/screens/facility/facilitybooking.dart';
import 'package:user_app/screens/inquiry/inquirylist.dart';
import 'package:user_app/screens/property/components/qrscan.dart';
import 'package:user_app/screens/propertylist/propertylist.dart';
import 'package:user_app/screens/serviceprovider/service_provider.dart';
import 'package:user_app/screens/visitor/previsitorform.dart';
import 'package:user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:nb_utils/nb_utils.dart';

import '../account/maintenance .dart';

class CategoryScreen extends StatefulWidget {
  final bool? hideAppBar;

  CategoryScreen({this.hideAppBar});

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  ScrollController scrollController = ScrollController();

  int page = 1;
  List<Category> mainList = [];
  late List<Category> categorys = [];

  bool isEnabled = false;
  bool isLastPage = false;
  bool fabIsVisible = true;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {

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
  
    
    Category cat7 = new Category(
        icon: Icons.kitesurfing_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 5,
        is_featured: 1,
        name: "Facility Booking",
        status: 1,
        isSelected: false,
        services: 1);
    
    Category cat8 = new Category(
        icon: Icons.handyman_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 7,
        is_featured: 1,
        name: "Service Providers",
        status: 1,
        isSelected: false,
        services: 1);
    
    Category cat9 = new Category(
        icon: Icons.villa_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 7,
        is_featured: 1,
        name: "Committee",
        status: 1,
        isSelected: false,
        services: 1);
    
    Category cat11 = new Category(
        icon: Icons.post_add_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 7,
        is_featured: 1,
        name: "Complain",
        status: 1,
        isSelected: false,
        services: 1);
    Category cat12 = new Category(
        icon: Icons.email_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 7,
        is_featured: 1,
        name: "Inquiry",
        status: 1,
        isSelected: false,
        services: 1);
    Category cat13 = new Category(
        icon: Icons.home_work_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 7,
        is_featured: 1,
        name: "Account",
        status: 1,
        isSelected: false,
        services: 1);
    // Category cat14 = new Category(
    //     icon: Icons.cabin_outlined,
    //     category_image: "",
    //     color: "",
    //     description: "",
    //     id: 7,
    //     is_featured: 1,
    //     name: "Renovation",
    //     status: 1,
    //     isSelected: false,
    //     services: 1);
    // Category cat15 = new Category(
    //     icon: Icons.receipt_long_outlined,
    //     category_image: "",
    //     color: "",
    //     description: "",
    //     id: 7,
    //     is_featured: 1,
    //     name: "Records",
    //     status: 1,
    //     isSelected: false,
    //     services: 1);
    
    Category cat17 = new Category(
        icon: Icons.notification_important_outlined,
        category_image: "",
        color: "",
        description: "",
        id: 7,
        is_featured: 1,
        name: "Notice",
        status: 1,
        isSelected: false,
        services: 1);
    
    categorys.add(cat7);
    categorys.add(cat8);

    categorys.add(cat11);
    categorys.add(cat12);
    //categorys.add(cat16);

    categorys.add(cat13);
    //categorys.add(cat14);
    //categorys.add(cat15);
    categorys.add(cat17);
    categorys.add(cat9);
    //categorys.add(cat10);
    categorys.add(cat1);
    categorys.add(cat2);
    categorys.add(cat3);
    categorys.add(cat4);
    categorys.add(cat5);
    categorys.add(cat6);

    afterBuildCreated(() {
      setStatusBarColor(context.primaryColor);
    });
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        if (!isLastPage) {
          page++;
          // fetchAllCategoryData();
        }
      }
    });
  }

  Future fetchAllCategoryData() async {
    appStore.setLoading(true);

    appStore.setLoading(false);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        page = 1;
        return await fetchAllCategoryData();
      },
      child: Scaffold(
        appBar: appBarWidget(
          'All Services',
          textColor: Colors.white,
          color: primaryColor,
          showBack: !widget.hideAppBar.validate(value: false),
          backWidget: BackWidget(
          onPressed: () => HomeScreen().launch(context,
              isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide),
        ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              controller: scrollController,
              padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: AnimationLimiter(
                child: Wrap(
                  runSpacing: 16,
                  spacing: 16,
                  children: List.generate(
                    categorys.length,
                    (index) {
                      Category data = categorys[index];
                      return AnimationConfiguration.staggeredGrid(
                        position: index,
                        columnCount: 1,
                        child: SlideAnimation(
                          horizontalOffset: 60.0,
                          verticalOffset: 50,
                          child: FadeInAnimation(
                            duration: 700.milliseconds,
                            child: GestureDetector(
                              onTap: () {
                                if (data.name == "Account") {
                                  MaintenanceScreen()
                                      .launch(context,
                                          pageRouteAnimation:
                                              PageRouteAnimation.Slide)
                                      .then((value) {
                                    setStatusBarColor(Colors.transparent);
                                  });
                                }
                                if (data.name == "Renovation") {
                                  RenovationScreen()
                                      .launch(context,
                                          pageRouteAnimation:
                                              PageRouteAnimation.Slide)
                                      .then((value) {
                                    setStatusBarColor(Colors.transparent);
                                  });
                                }
                                if (data.name == "Records") {
                                  ReportScreen()
                                    ..launch(context,
                                            pageRouteAnimation:
                                                PageRouteAnimation.Slide)
                                        .then((value) {
                                      setStatusBarColor(Colors.transparent);
                                    });
                                }
                                if (data.name == "Notice") {
                                  NoticeScreen()
                                    ..launch(context,
                                            pageRouteAnimation:
                                                PageRouteAnimation.Slide)
                                        .then((value) {
                                      setStatusBarColor(Colors.transparent);
                                    });
                                }
                                 if (data.name == "Service Providers") {
                             ServiceProviderScreen().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide);
                          }
                          if (data.name == "Complain") {
                             ComplientListScreen().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide);
                          }
                           if (data.name == "Inquiry") {
                             InquiryListScreen().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide);
                          }
                          if (data.name == "Committee") {
                             CommiteeScreen().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide);
                          }
                            if (data.name == "Panic Alert") {
                             CommiteeScreen().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide);
                          }
                           if (data.name == "Facility Booking") {
                             FacilityBookingScreen().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide);
                          }
                           if (data.name == "Panic") {
                              PanicScreen().launch(context,
                                  isNewTask: true,
                                  pageRouteAnimation: PageRouteAnimation.Slide);
                            }
                            if (data.name == "Announcement") {
                              AnnouncementScreen()
                                  .launch(context,
                                      pageRouteAnimation:
                                          PageRouteAnimation.Slide)
                                  .then((value) {
                                setStatusBarColor(Colors.transparent);
                              });
                            }
                            if (data.name == "Add Property") {
                              Qrscan().launch(context,
                                  isNewTask: true,
                                  pageRouteAnimation: PageRouteAnimation.Slide);
                            }
                           if (data.name == "Panic Alert") {
                             PanicListScreen().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide);
                          }
                           if (data.name == "Check Point") {
                             ScanCheckpoint().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide);
                          }
                           if (data.name == "Add Tenant") {
                             PropertyListScreen().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide);
                          }
                           if (data.name == "Visitor") {
                             PreVisitorsScreen().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide);
                          }
                          
                              },
                              child: CategoryWidget(
                                  categoryData: data,
                                  icon: data.icon,
                                  width: context.width() / 2 - 24),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Observer(
                builder: (BuildContext context) =>
                    LoaderWidget().visible(appStore.isLoading.validate()))
          ],
        ),
      ),
    );
  }
}
