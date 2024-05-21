///
//  Generated code. Do not modify.
//  source: utility.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PerpouseOfVisitModel extends $pb.ProtobufEnum {
  static const PerpouseOfVisitModel PerpouseOfVisitNull = PerpouseOfVisitModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PerpouseOfVisitNull');
  static const PerpouseOfVisitModel Delivery = PerpouseOfVisitModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Delivery');
  static const PerpouseOfVisitModel Service = PerpouseOfVisitModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Service');
  static const PerpouseOfVisitModel PickUp = PerpouseOfVisitModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PickUp');
  static const PerpouseOfVisitModel DropOff = PerpouseOfVisitModel._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DropOff');
  static const PerpouseOfVisitModel FamilyAndFriends = PerpouseOfVisitModel._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FamilyAndFriends');

  static const $core.List<PerpouseOfVisitModel> values = <PerpouseOfVisitModel> [
    PerpouseOfVisitNull,
    Delivery,
    Service,
    PickUp,
    DropOff,
    FamilyAndFriends,
  ];

  static final $core.Map<$core.int, PerpouseOfVisitModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PerpouseOfVisitModel? valueOf($core.int value) => _byValue[value];

  const PerpouseOfVisitModel._($core.int v, $core.String n) : super(v, n);
}

class VisitByModel extends $pb.ProtobufEnum {
  static const VisitByModel VisitByNull = VisitByModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VisitByNull');
  static const VisitByModel WalkIn = VisitByModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WalkIn');
  static const VisitByModel Bike = VisitByModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Bike');
  static const VisitByModel Car = VisitByModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Car');

  static const $core.List<VisitByModel> values = <VisitByModel> [
    VisitByNull,
    WalkIn,
    Bike,
    Car,
  ];

  static final $core.Map<$core.int, VisitByModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VisitByModel? valueOf($core.int value) => _byValue[value];

  const VisitByModel._($core.int v, $core.String n) : super(v, n);
}

class PrioritiesModel extends $pb.ProtobufEnum {
  static const PrioritiesModel PrioritiesNull = PrioritiesModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PrioritiesNull');
  static const PrioritiesModel High = PrioritiesModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'High');
  static const PrioritiesModel Medium = PrioritiesModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Medium');
  static const PrioritiesModel Low = PrioritiesModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Low');

  static const $core.List<PrioritiesModel> values = <PrioritiesModel> [
    PrioritiesNull,
    High,
    Medium,
    Low,
  ];

  static final $core.Map<$core.int, PrioritiesModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PrioritiesModel? valueOf($core.int value) => _byValue[value];

  const PrioritiesModel._($core.int v, $core.String n) : super(v, n);
}

class StatusModel extends $pb.ProtobufEnum {
  static const StatusModel SNull = StatusModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SNull');
  static const StatusModel Active = StatusModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Active');
  static const StatusModel Pending = StatusModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Pending');
  static const StatusModel Reject = StatusModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Reject');
  static const StatusModel Block = StatusModel._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Block');
  static const StatusModel Finished = StatusModel._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Finished');
  static const StatusModel Processing = StatusModel._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Processing');
  static const StatusModel Suspended = StatusModel._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Suspended');

  static const $core.List<StatusModel> values = <StatusModel> [
    SNull,
    Active,
    Pending,
    Reject,
    Block,
    Finished,
    Processing,
    Suspended,
  ];

  static final $core.Map<$core.int, StatusModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StatusModel? valueOf($core.int value) => _byValue[value];

  const StatusModel._($core.int v, $core.String n) : super(v, n);
}

class PaymentStatusModel extends $pb.ProtobufEnum {
  static const PaymentStatusModel Nill = PaymentStatusModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Nill');
  static const PaymentStatusModel Paid = PaymentStatusModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Paid');
  static const PaymentStatusModel NotPaid = PaymentStatusModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NotPaid');
  static const PaymentStatusModel Refunded = PaymentStatusModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Refunded');
  static const PaymentStatusModel Deposit = PaymentStatusModel._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Deposit');

  static const $core.List<PaymentStatusModel> values = <PaymentStatusModel> [
    Nill,
    Paid,
    NotPaid,
    Refunded,
    Deposit,
  ];

  static final $core.Map<$core.int, PaymentStatusModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PaymentStatusModel? valueOf($core.int value) => _byValue[value];

  const PaymentStatusModel._($core.int v, $core.String n) : super(v, n);
}

class AdminpaymentStatusModel extends $pb.ProtobufEnum {
  static const AdminpaymentStatusModel NillAdminpaymentStatusModel = AdminpaymentStatusModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NillAdminpaymentStatusModel');
  static const AdminpaymentStatusModel PaymentRequested = AdminpaymentStatusModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PaymentRequested');
  static const AdminpaymentStatusModel PaymentVerified = AdminpaymentStatusModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PaymentVerified');
  static const AdminpaymentStatusModel PaymentRejected = AdminpaymentStatusModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PaymentRejected');

  static const $core.List<AdminpaymentStatusModel> values = <AdminpaymentStatusModel> [
    NillAdminpaymentStatusModel,
    PaymentRequested,
    PaymentVerified,
    PaymentRejected,
  ];

  static final $core.Map<$core.int, AdminpaymentStatusModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AdminpaymentStatusModel? valueOf($core.int value) => _byValue[value];

  const AdminpaymentStatusModel._($core.int v, $core.String n) : super(v, n);
}

class PaymentByModel extends $pb.ProtobufEnum {
  static const PaymentByModel NillPaymentBy = PaymentByModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NillPaymentBy');
  static const PaymentByModel OnlineTransfer = PaymentByModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OnlineTransfer');
  static const PaymentByModel CounterCash = PaymentByModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CounterCash');
  static const PaymentByModel CounterCard = PaymentByModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CounterCard');
  static const PaymentByModel CounterCheque = PaymentByModel._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CounterCheque');

  static const $core.List<PaymentByModel> values = <PaymentByModel> [
    NillPaymentBy,
    OnlineTransfer,
    CounterCash,
    CounterCard,
    CounterCheque,
  ];

  static final $core.Map<$core.int, PaymentByModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PaymentByModel? valueOf($core.int value) => _byValue[value];

  const PaymentByModel._($core.int v, $core.String n) : super(v, n);
}

class BillModel extends $pb.ProtobufEnum {
  static const BillModel BillNill = BillModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BillNill');
  static const BillModel Maintenance = BillModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Maintenance');
  static const BillModel Renovation = BillModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Renovation');
  static const BillModel FacilityDepositFees = BillModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FacilityDepositFees');
  static const BillModel FacilityUsageFees = BillModel._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FacilityUsageFees');
  static const BillModel Panality = BillModel._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Panality');
  static const BillModel MoveIn = BillModel._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MoveIn');
  static const BillModel MoveOut = BillModel._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MoveOut');

  static const $core.List<BillModel> values = <BillModel> [
    BillNill,
    Maintenance,
    Renovation,
    FacilityDepositFees,
    FacilityUsageFees,
    Panality,
    MoveIn,
    MoveOut,
  ];

  static final $core.Map<$core.int, BillModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BillModel? valueOf($core.int value) => _byValue[value];

  const BillModel._($core.int v, $core.String n) : super(v, n);
}

class AnnouncementTypeModel extends $pb.ProtobufEnum {
  static const AnnouncementTypeModel AnnouncementNill = AnnouncementTypeModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AnnouncementNill');
  static const AnnouncementTypeModel Announcement = AnnouncementTypeModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Announcement');
  static const AnnouncementTypeModel Notice = AnnouncementTypeModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Notice');

  static const $core.List<AnnouncementTypeModel> values = <AnnouncementTypeModel> [
    AnnouncementNill,
    Announcement,
    Notice,
  ];

  static final $core.Map<$core.int, AnnouncementTypeModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AnnouncementTypeModel? valueOf($core.int value) => _byValue[value];

  const AnnouncementTypeModel._($core.int v, $core.String n) : super(v, n);
}

class DocBannerTypeModel extends $pb.ProtobufEnum {
  static const DocBannerTypeModel bNone = DocBannerTypeModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'bNone');
  static const DocBannerTypeModel Banner = DocBannerTypeModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Banner');
  static const DocBannerTypeModel Document = DocBannerTypeModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Document');

  static const $core.List<DocBannerTypeModel> values = <DocBannerTypeModel> [
    bNone,
    Banner,
    Document,
  ];

  static final $core.Map<$core.int, DocBannerTypeModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DocBannerTypeModel? valueOf($core.int value) => _byValue[value];

  const DocBannerTypeModel._($core.int v, $core.String n) : super(v, n);
}

class AccountRoleModel extends $pb.ProtobufEnum {
  static const AccountRoleModel ARNull = AccountRoleModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARNull');
  static const AccountRoleModel SuperAdministrator = AccountRoleModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SuperAdministrator');
  static const AccountRoleModel ManagementAdmin = AccountRoleModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ManagementAdmin');
  static const AccountRoleModel SecurityGuard = AccountRoleModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SecurityGuard');
  static const AccountRoleModel Technician = AccountRoleModel._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Technician');
  static const AccountRoleModel User = AccountRoleModel._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'User');

  static const $core.List<AccountRoleModel> values = <AccountRoleModel> [
    ARNull,
    SuperAdministrator,
    ManagementAdmin,
    SecurityGuard,
    Technician,
    User,
  ];

  static final $core.Map<$core.int, AccountRoleModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountRoleModel? valueOf($core.int value) => _byValue[value];

  const AccountRoleModel._($core.int v, $core.String n) : super(v, n);
}

class GenderModel extends $pb.ProtobufEnum {
  static const GenderModel GNull = GenderModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GNull');
  static const GenderModel Male = GenderModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Male');
  static const GenderModel Female = GenderModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Female');
  static const GenderModel NotMentioned = GenderModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NotMentioned');

  static const $core.List<GenderModel> values = <GenderModel> [
    GNull,
    Male,
    Female,
    NotMentioned,
  ];

  static final $core.Map<$core.int, GenderModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GenderModel? valueOf($core.int value) => _byValue[value];

  const GenderModel._($core.int v, $core.String n) : super(v, n);
}

class UnitRoleModel extends $pb.ProtobufEnum {
  static const UnitRoleModel URNull = UnitRoleModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'URNull');
  static const UnitRoleModel Owner = UnitRoleModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Owner');
  static const UnitRoleModel Tenant = UnitRoleModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Tenant');

  static const $core.List<UnitRoleModel> values = <UnitRoleModel> [
    URNull,
    Owner,
    Tenant,
  ];

  static final $core.Map<$core.int, UnitRoleModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UnitRoleModel? valueOf($core.int value) => _byValue[value];

  const UnitRoleModel._($core.int v, $core.String n) : super(v, n);
}

class UnitFurnishTypeModel extends $pb.ProtobufEnum {
  static const UnitFurnishTypeModel UFTNull = UnitFurnishTypeModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UFTNull');
  static const UnitFurnishTypeModel Furnished = UnitFurnishTypeModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Furnished');
  static const UnitFurnishTypeModel SemiFurnished = UnitFurnishTypeModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SemiFurnished');
  static const UnitFurnishTypeModel NonFurnished = UnitFurnishTypeModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NonFurnished');

  static const $core.List<UnitFurnishTypeModel> values = <UnitFurnishTypeModel> [
    UFTNull,
    Furnished,
    SemiFurnished,
    NonFurnished,
  ];

  static final $core.Map<$core.int, UnitFurnishTypeModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UnitFurnishTypeModel? valueOf($core.int value) => _byValue[value];

  const UnitFurnishTypeModel._($core.int v, $core.String n) : super(v, n);
}

class UnitStatusModel extends $pb.ProtobufEnum {
  static const UnitStatusModel USNull = UnitStatusModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'USNull');
  static const UnitStatusModel Sold = UnitStatusModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Sold');
  static const UnitStatusModel UnSold = UnitStatusModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UnSold');
  static const UnitStatusModel Defective = UnitStatusModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Defective');
  static const UnitStatusModel Rejected = UnitStatusModel._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Rejected');
  static const UnitStatusModel LoanRejected = UnitStatusModel._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LoanRejected');
  static const UnitStatusModel Requested = UnitStatusModel._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Requested');

  static const $core.List<UnitStatusModel> values = <UnitStatusModel> [
    USNull,
    Sold,
    UnSold,
    Defective,
    Rejected,
    LoanRejected,
    Requested,
  ];

  static final $core.Map<$core.int, UnitStatusModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UnitStatusModel? valueOf($core.int value) => _byValue[value];

  const UnitStatusModel._($core.int v, $core.String n) : super(v, n);
}

class UnitTypeModel extends $pb.ProtobufEnum {
  static const UnitTypeModel UTNull = UnitTypeModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UTNull');
  static const UnitTypeModel FreeHold = UnitTypeModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FreeHold');
  static const UnitTypeModel LeaseHold = UnitTypeModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LeaseHold');

  static const $core.List<UnitTypeModel> values = <UnitTypeModel> [
    UTNull,
    FreeHold,
    LeaseHold,
  ];

  static final $core.Map<$core.int, UnitTypeModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UnitTypeModel? valueOf($core.int value) => _byValue[value];

  const UnitTypeModel._($core.int v, $core.String n) : super(v, n);
}

class NationalityModel extends $pb.ProtobufEnum {
  static const NationalityModel NNull = NationalityModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NNull');
  static const NationalityModel Malaysian = NationalityModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Malaysian');
  static const NationalityModel NonMalaysian = NationalityModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NonMalaysian');

  static const $core.List<NationalityModel> values = <NationalityModel> [
    NNull,
    Malaysian,
    NonMalaysian,
  ];

  static final $core.Map<$core.int, NationalityModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NationalityModel? valueOf($core.int value) => _byValue[value];

  const NationalityModel._($core.int v, $core.String n) : super(v, n);
}

class EmailTrackerModel extends $pb.ProtobufEnum {
  static const EmailTrackerModel ETNull = EmailTrackerModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ETNull');
  static const EmailTrackerModel Registration = EmailTrackerModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Registration');
  static const EmailTrackerModel ForgotPassword = EmailTrackerModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ForgotPassword');
  static const EmailTrackerModel Promotion = EmailTrackerModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Promotion');

  static const $core.List<EmailTrackerModel> values = <EmailTrackerModel> [
    ETNull,
    Registration,
    ForgotPassword,
    Promotion,
  ];

  static final $core.Map<$core.int, EmailTrackerModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EmailTrackerModel? valueOf($core.int value) => _byValue[value];

  const EmailTrackerModel._($core.int v, $core.String n) : super(v, n);
}

class ResidenceTypeModel extends $pb.ProtobufEnum {
  static const ResidenceTypeModel RTNull = ResidenceTypeModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RTNull');
  static const ResidenceTypeModel Residential = ResidenceTypeModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Residential');
  static const ResidenceTypeModel Commercial = ResidenceTypeModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Commercial');
  static const ResidenceTypeModel Industrial = ResidenceTypeModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Industrial');
  static const ResidenceTypeModel Agriculture = ResidenceTypeModel._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Agriculture');
  static const ResidenceTypeModel SpecialPurpose = ResidenceTypeModel._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SpecialPurpose');
  static const ResidenceTypeModel Individual = ResidenceTypeModel._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Individual');
  static const ResidenceTypeModel Villa = ResidenceTypeModel._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Villa');
  static const ResidenceTypeModel MixedUse = ResidenceTypeModel._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MixedUse');

  static const $core.List<ResidenceTypeModel> values = <ResidenceTypeModel> [
    RTNull,
    Residential,
    Commercial,
    Industrial,
    Agriculture,
    SpecialPurpose,
    Individual,
    Villa,
    MixedUse,
  ];

  static final $core.Map<$core.int, ResidenceTypeModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResidenceTypeModel? valueOf($core.int value) => _byValue[value];

  const ResidenceTypeModel._($core.int v, $core.String n) : super(v, n);
}

class StateListModel extends $pb.ProtobufEnum {
  static const StateListModel SLNull = StateListModel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SLNull');
  static const StateListModel Johor = StateListModel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Johor');
  static const StateListModel Kedah = StateListModel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Kedah');
  static const StateListModel Kelantan = StateListModel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Kelantan');
  static const StateListModel KualaLumpur = StateListModel._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'KualaLumpur');
  static const StateListModel Labuan = StateListModel._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Labuan');
  static const StateListModel Melaka = StateListModel._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Melaka');
  static const StateListModel NegeriSembilan = StateListModel._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NegeriSembilan');
  static const StateListModel Pahang = StateListModel._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Pahang');
  static const StateListModel Perak = StateListModel._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Perak');
  static const StateListModel Perlis = StateListModel._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Perlis');
  static const StateListModel Penang = StateListModel._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Penang');
  static const StateListModel Sabah = StateListModel._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Sabah');
  static const StateListModel Sarawak = StateListModel._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Sarawak');
  static const StateListModel Selangor = StateListModel._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Selangor');
  static const StateListModel Terengganu = StateListModel._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Terengganu');

  static const $core.List<StateListModel> values = <StateListModel> [
    SLNull,
    Johor,
    Kedah,
    Kelantan,
    KualaLumpur,
    Labuan,
    Melaka,
    NegeriSembilan,
    Pahang,
    Perak,
    Perlis,
    Penang,
    Sabah,
    Sarawak,
    Selangor,
    Terengganu,
  ];

  static final $core.Map<$core.int, StateListModel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StateListModel? valueOf($core.int value) => _byValue[value];

  const StateListModel._($core.int v, $core.String n) : super(v, n);
}

