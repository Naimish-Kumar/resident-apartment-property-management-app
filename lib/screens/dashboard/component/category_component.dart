import 'package:user_app/main.dart';
import 'package:user_app/model/dashboard_model.dart';
import 'package:user_app/screens/Panic/panic.dart';
import 'package:user_app/screens/Panic/paniclist.dart';
import 'package:user_app/screens/announcement/announcement_screen.dart';
import 'package:user_app/screens/checkpoint/scancheckpoint.dart'; 
import 'package:user_app/screens/dashboard/widget/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:user_app/screens/emergency/emergency.dart'; 
import 'package:user_app/screens/property/components/qrscan.dart'; 
import 'package:user_app/screens/propertylist/propertylist.dart'; 
import 'package:user_app/screens/technician/active_work.dart';
import 'package:user_app/screens/technician/complete_work.dart';
import 'package:user_app/screens/technician/pending_work.dart';
import 'package:user_app/screens/visitor/overnightvisitors.dart';
import 'package:user_app/screens/visitor/parking.dart';
import 'package:user_app/screens/visitor/previsitorform.dart';
import 'package:user_app/screens/visitor/previsitqrcheck.dart';
 
import 'package:user_app/screens/visitor/visitors.dart';
import '../../category/category_screen.dart';

class CategoryComponent extends StatefulWidget {
  final List<Category>? categoryList;
  final Function? onCall;
  final bool? isViewAll;

  CategoryComponent({this.categoryList, this.onCall, this.isViewAll});

  @override
  CategoryComponentState createState() => CategoryComponentState();
}

class CategoryComponentState extends State<CategoryComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.isViewAll.validate())
            Column(
              children: [
                16.height,
                Row(
                  children: [
                    Text(language!.category, style: boldTextStyle(size: 20))
                        .expand(),
                    TextButton(
                      onPressed: () {
                        CategoryScreen()
                            .launch(context,
                                pageRouteAnimation: PageRouteAnimation.Slide)
                            .then((value) {
                          setStatusBarColor(Colors.transparent);
                        });
                      },
                      child: Text(language!.lblViewAll,
                          style: secondaryTextStyle(size: 14)),
                    )
                  ],
                ),
              ],
            ),
          8.height,
          AnimationLimiter(
            child: Wrap(
              runSpacing: 16,
              spacing: 16,
              children: List.generate(
                widget.categoryList!.length,
                (index) {
                  Category data = widget.categoryList![index];
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
                            if (data.name == "New Work") {
                              PendingworkScreen().launch(context,
                                  isNewTask: true,
                                  pageRouteAnimation: PageRouteAnimation.Slide);
                            }
                            if (data.name == "Active Work") {
                              ActiveworkScreen().launch(context,
                                  isNewTask: true,
                                  pageRouteAnimation: PageRouteAnimation.Slide);
                            }
                            if (data.name == "Report") {
                              CompleteworkScreen().launch(context,
                                  isNewTask: true,
                                  pageRouteAnimation: PageRouteAnimation.Slide);
                            }
                            if (data.name == "Emergency") {
                              EmergencyScreen().launch(context,
                                  isNewTask: true,
                                  pageRouteAnimation: PageRouteAnimation.Slide);
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
                          if (data.name == "Visitors") {
                             VisitorsScreen().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide);
                          }

                           if (data.name == "Parking") {
                             ParkingScreen().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide);
                          }
                          if (data.name == "Pre Visitor") {
                             Previsitqrcheck().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide);
                          }
                            if (data.name == "Over Night Parking") {
                             OvernightVisitorsScreen().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide);
                          }
                
                         
                          },
                          child: CategoryWidget(
                            categoryData: data,
                            icon: data.icon,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
