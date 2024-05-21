import 'dart:async';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:intl/intl.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart'; 
import 'package:user_app/main.dart';
import 'package:user_app/screens/category/category_screen.dart';  
import 'package:user_app/src/generated/facility.pbgrpc.dart'; 
import 'package:user_app/src/generated/facilitybooking.pbgrpc.dart';  
import 'package:user_app/src/generated/slot.pbgrpc.dart';
import 'package:user_app/src/generated/utility.pb.dart';  
import 'package:user_app/utils/colors.dart';
import 'package:user_app/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:user_app/utils/extensions/string_extensions.dart'; 
import 'package:user_app/utils/images.dart';

class FacilityBookingScreen extends StatefulWidget {
  const FacilityBookingScreen({Key? key}) : super(key: key);
   

  @override
  _FacilityBookingScreenScreenState createState() =>
      _FacilityBookingScreenScreenState();
}

class _FacilityBookingScreenScreenState extends State<FacilityBookingScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController dateinput = TextEditingController();
  List<FacilityBookingRequest> UserFacilityRequestRequests =[]; //User
 List<FacilityRequest> FacilityBookingRequests =[];
 List<SlotRequest>SlotRequests =[];
 FacilityRequest? FacilityBookingdata;
 SlotRequest? Slotdata;
 FacilityRequest? FacilityRequestdata;
  String dates = "00-00-0001";
  late DateTime dateOfBirth;
   DateTime selectedDate = DateTime.now();

  getFacilityList() async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
    ResidenceFacilityLookupModel subcatdata = new ResidenceFacilityLookupModel();
      subcatdata.residenceId = prefs.getString("rid") ?? "";
    RpcFacilityClient client = RpcFacilityClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));
    FacilitiesList responsedata = await client.getAllFacilitiesByResidenceById(subcatdata,
        options: (CallOptions(providers: [_provider])));
    setState(() {
      FacilityBookingRequests.clear();
      FacilityBookingRequests = responsedata.items;
    });
  }
 

 getUserFacilityBookingList() async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
    UserFacilityBookingLookupModel subcatdata = new UserFacilityBookingLookupModel();
      subcatdata.userId = prefs.getString("uid") ?? "";
    RpcFacilityBookingClient client = RpcFacilityBookingClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));
    FacilityBookingsList responsedata = await client.getUserFacilityBookingById(subcatdata,
        options: (CallOptions(providers: [_provider])));
    setState(() {
      UserFacilityRequestRequests.clear();
      UserFacilityRequestRequests = responsedata.items;
    });
  }

    getSlotList(String facilityid) async {
       SharedPreferences prefs = await SharedPreferences.getInstance();
    SlotFacilityLookupModel subcatdata = new SlotFacilityLookupModel();
    subcatdata.facilityId = facilityid;
     subcatdata.residenceId = prefs.getString("rid") ?? "";
    RpcSlotClient client = RpcSlotClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));
    SlotsList responsedata = await client.getAllSlotByFacilitieById(subcatdata,
        options: (CallOptions(providers: [_provider])));
    setState(() {
      SlotRequests.clear();
      SlotRequests = responsedata.items;
    });
  }
  @override
  void initState() {
    super.initState();
    init();
     
  }

  Future<FutureOr<void>> _provider(
      Map<String, String> metadata, String uri) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = (prefs.getString("AccessToken") ?? "");
    metadata['Authorization'] = "Bearer $token";
  }

  void init() async {
    await getFacilityList();
    getUserFacilityBookingList();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  
 
 
  Widget _buildFormWidget() {
    return Column(
      children: [
        10.height,
        DropdownButtonFormField<FacilityRequest>(
          decoration: inputDecoration(context, hint: "Select Facility Or Event"),
          isExpanded: true,
          value: FacilityBookingdata,
          dropdownColor: context.cardColor,
          items: FacilityBookingRequests.map((FacilityRequest? e) {
            return DropdownMenuItem<FacilityRequest>(
              value: e,
              child: Text(
                e!.name.toString(),
                style: primaryTextStyle(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          onChanged: (FacilityRequest? value) async {
            hideKeyboard(context);
            FacilityBookingdata = value;
           
            getSlotList(value!.facilityId.toString());
            setState(() {
              SlotRequests.clear();
            });
          },
        ),
        16.height,
        DropdownButtonFormField<SlotRequest>(
          decoration: inputDecoration(context, hint: "Select Slot"),
          isExpanded: true,
          value: Slotdata,
          dropdownColor: context.cardColor,
          items: SlotRequests.map((SlotRequest e) {
            return DropdownMenuItem<SlotRequest>(
              value: e,
              child: Text(
                e.slotName+'( '+ e.from.toString() +' To '+ e.to +' )',
                style: primaryTextStyle(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          onChanged: (SlotRequest? value) async {
            hideKeyboard(context);

            Slotdata = value;
          },
        ),
         
         16.height,
          AppTextField(
          textFieldType: TextFieldType.OTHER,
          controller: dateinput,
           
          errorThisFieldRequired: language!.requiredText,
          
          decoration: inputDecoration(context, hint: "Select Booking Date"),
          suffix: ic_calendar.iconImage(size: 10).paddingAll(14),
          onTap: () async {
            FocusScope.of(context).requestFocus(new FocusNode());
            final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(1950, 8),
                lastDate: DateTime(2101));
            if (picked != null && picked != selectedDate)
              setState(() {
                dateOfBirth = picked;
                selectedDate = picked;
                String formattedDate = DateFormat('dd-MM-yyyy').format(picked);
                dateinput.text = formattedDate;
                dates = formattedDate;
                print(dateOfBirth);
              });
          },
        ),
  
  16.height,  
        
        AppButton(
          text: 'Request',
          color: primaryColor,
          textStyle: boldTextStyle(color: white),
          width: context.width() - context.navigationBarHeight,
          onTap: () async {

        if (FacilityBookingdata == null) {
            toast("Please Select Facility");
          } else {
            if (Slotdata == null) {
            toast("Please Select Slot");
          } else {
             if (dates == "00-00-0001") {
            toast("Please Select Date");
          } else {
             SharedPreferences prefs = await SharedPreferences.getInstance();
            FacilityBookingRequest request = new FacilityBookingRequest();
            request.residenceId = prefs.getString("rid") ?? "";
            request.userId = prefs.getString("uid") ?? "";
            request.facilityId = FacilityBookingdata!.facilityId;
            request.slotId = Slotdata!.slotId;
            request.status = StatusModel.Pending;  
            request.date =   dates;
             RpcFacilityBookingClient client = RpcFacilityBookingClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));
    FacilityBookingResponse responsedata = await client.insertFacilityBooking(request,
        options: (CallOptions(providers: [_provider])));  

        if (responsedata.isOk) {
          showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Booking'),
                        content: Text(responsedata.response.toString()),
                        actions: <Widget>[
                          TextButton(
                            onPressed: (){
                              Navigator.pop(context, 'OK');
                              // Slotdata!.clear();
                              // FacilityBookingdata!.clear();
                               getUserFacilityBookingList();
                                },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
          
        } else
         {
          toast(responsedata.error.message);
        } 


          }

            
          }


          }

            

           
                    
            }  )
           
      ],
    );
  }

  //endregion

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
  length: 2,
  child:Scaffold(
      drawer: AppDrawer(),
      appBar: appBarWidget(
        "Facility & Event Booking",
        elevation: 0,
        color: primaryColor,
        showBack: true,
        backWidget: BackWidget(
          onPressed: () => CategoryScreen().launch(context,
              isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide),
        ),
        systemUiOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness:
                appStore.isDarkMode ? Brightness.light : Brightness.dark,
            statusBarColor: context.scaffoldBackgroundColor),
            bottom: TabBar(
  tabs: [
    Tab(
      icon: Icon(Icons.kitesurfing_outlined),
      text: "Booking Form",
    ),
    Tab(
      icon: Icon(Icons.account_box_outlined),
      text: "My Booking",
    ),
     
    
  ],
),
      ),
      backgroundColor: Colors.white,
      body: TabBarView(
        
      children: [
       SizedBox(
        width: context.width(),
        child: Stack(
          children: [
            Form(
              key: formKey,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    
                    _buildFormWidget(),
                    
                  ],
                ),
              ),
            ),
            
],
        ),
      ),
        
         
            UserFacilityRequestRequests.isEmpty
          ? const Center(
              child: Text(
              'No Data',
              style: TextStyle(color: Colors.black),
            ))
          : ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              itemCount: UserFacilityRequestRequests.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    SingleChildScrollView(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          8.height,
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration:
                                boxDecorationDefault(color: context.cardColor),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.kitesurfing_outlined,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ),
                                    16.width,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Facility : '+UserFacilityRequestRequests[index].facility.name,
                                            style: boldTextStyle()),
                                             12.height,
                                        Text('Slot : '+UserFacilityRequestRequests[index].slot.from.toString() +' To '+UserFacilityRequestRequests[index].slot.to.toString(),
                                            style: primaryTextStyle()),
                                        // 12.height,
                                        // Text('At : '+VisitorRequestListCheckin[index].checkIn,
                                        //     style: primaryTextStyle()),
                                      ],
                                    ).expand(),
                                    Image.asset(ic_verified,
                                        height: 24,
                                        width: 24,
                                        color: UserFacilityRequestRequests[index].status == StatusModel.Active ? completedColor:(UserFacilityRequestRequests[index].status == StatusModel.Pending ? rejectedColor : pendingColor )),
                                  ],
                                ),
                                // Column(
                                //   crossAxisAlignment: CrossAxisAlignment.start,
                                //   children: [
                                //     8.height,
                                //     TextIcon(
                                //       spacing: 10,
                                //       onTap: () {},
                                //       expandedText: true,
                                //       prefix: Image.asset(ic_location,
                                //           width: 20,
                                //           height: 20,
                                //           color: appStore.isDarkMode
                                //               ? Colors.white
                                //               : Colors.black),
                                //       text: VisitorRequestListCheckin[index].unitId
                                //     ),
                                //   ],
                                // ),
                                  
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },

              //////////
            ),
          
      
        
      ],
    ),
    ),);
  }
}
