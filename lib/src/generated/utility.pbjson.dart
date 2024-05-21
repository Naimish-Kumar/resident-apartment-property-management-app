///
//  Generated code. Do not modify.
//  source: utility.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use perpouseOfVisitModelDescriptor instead')
const PerpouseOfVisitModel$json = const {
  '1': 'PerpouseOfVisitModel',
  '2': const [
    const {'1': 'PerpouseOfVisitNull', '2': 0},
    const {'1': 'Delivery', '2': 1},
    const {'1': 'Service', '2': 2},
    const {'1': 'PickUp', '2': 3},
    const {'1': 'DropOff', '2': 4},
    const {'1': 'FamilyAndFriends', '2': 5},
  ],
};

/// Descriptor for `PerpouseOfVisitModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List perpouseOfVisitModelDescriptor = $convert.base64Decode('ChRQZXJwb3VzZU9mVmlzaXRNb2RlbBIXChNQZXJwb3VzZU9mVmlzaXROdWxsEAASDAoIRGVsaXZlcnkQARILCgdTZXJ2aWNlEAISCgoGUGlja1VwEAMSCwoHRHJvcE9mZhAEEhQKEEZhbWlseUFuZEZyaWVuZHMQBQ==');
@$core.Deprecated('Use visitByModelDescriptor instead')
const VisitByModel$json = const {
  '1': 'VisitByModel',
  '2': const [
    const {'1': 'VisitByNull', '2': 0},
    const {'1': 'WalkIn', '2': 1},
    const {'1': 'Bike', '2': 2},
    const {'1': 'Car', '2': 3},
  ],
};

/// Descriptor for `VisitByModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List visitByModelDescriptor = $convert.base64Decode('CgxWaXNpdEJ5TW9kZWwSDwoLVmlzaXRCeU51bGwQABIKCgZXYWxrSW4QARIICgRCaWtlEAISBwoDQ2FyEAM=');
@$core.Deprecated('Use prioritiesModelDescriptor instead')
const PrioritiesModel$json = const {
  '1': 'PrioritiesModel',
  '2': const [
    const {'1': 'PrioritiesNull', '2': 0},
    const {'1': 'High', '2': 1},
    const {'1': 'Medium', '2': 2},
    const {'1': 'Low', '2': 3},
  ],
};

/// Descriptor for `PrioritiesModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List prioritiesModelDescriptor = $convert.base64Decode('Cg9Qcmlvcml0aWVzTW9kZWwSEgoOUHJpb3JpdGllc051bGwQABIICgRIaWdoEAESCgoGTWVkaXVtEAISBwoDTG93EAM=');
@$core.Deprecated('Use statusModelDescriptor instead')
const StatusModel$json = const {
  '1': 'StatusModel',
  '2': const [
    const {'1': 'SNull', '2': 0},
    const {'1': 'Active', '2': 1},
    const {'1': 'Pending', '2': 2},
    const {'1': 'Reject', '2': 3},
    const {'1': 'Block', '2': 4},
    const {'1': 'Finished', '2': 5},
    const {'1': 'Processing', '2': 6},
    const {'1': 'Suspended', '2': 7},
  ],
};

/// Descriptor for `StatusModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List statusModelDescriptor = $convert.base64Decode('CgtTdGF0dXNNb2RlbBIJCgVTTnVsbBAAEgoKBkFjdGl2ZRABEgsKB1BlbmRpbmcQAhIKCgZSZWplY3QQAxIJCgVCbG9jaxAEEgwKCEZpbmlzaGVkEAUSDgoKUHJvY2Vzc2luZxAGEg0KCVN1c3BlbmRlZBAH');
@$core.Deprecated('Use paymentStatusModelDescriptor instead')
const PaymentStatusModel$json = const {
  '1': 'PaymentStatusModel',
  '2': const [
    const {'1': 'Nill', '2': 0},
    const {'1': 'Paid', '2': 1},
    const {'1': 'NotPaid', '2': 2},
    const {'1': 'Refunded', '2': 3},
    const {'1': 'Deposit', '2': 4},
  ],
};

/// Descriptor for `PaymentStatusModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List paymentStatusModelDescriptor = $convert.base64Decode('ChJQYXltZW50U3RhdHVzTW9kZWwSCAoETmlsbBAAEggKBFBhaWQQARILCgdOb3RQYWlkEAISDAoIUmVmdW5kZWQQAxILCgdEZXBvc2l0EAQ=');
@$core.Deprecated('Use adminpaymentStatusModelDescriptor instead')
const AdminpaymentStatusModel$json = const {
  '1': 'AdminpaymentStatusModel',
  '2': const [
    const {'1': 'NillAdminpaymentStatusModel', '2': 0},
    const {'1': 'PaymentRequested', '2': 1},
    const {'1': 'PaymentVerified', '2': 2},
    const {'1': 'PaymentRejected', '2': 3},
  ],
};

/// Descriptor for `AdminpaymentStatusModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List adminpaymentStatusModelDescriptor = $convert.base64Decode('ChdBZG1pbnBheW1lbnRTdGF0dXNNb2RlbBIfChtOaWxsQWRtaW5wYXltZW50U3RhdHVzTW9kZWwQABIUChBQYXltZW50UmVxdWVzdGVkEAESEwoPUGF5bWVudFZlcmlmaWVkEAISEwoPUGF5bWVudFJlamVjdGVkEAM=');
@$core.Deprecated('Use paymentByModelDescriptor instead')
const PaymentByModel$json = const {
  '1': 'PaymentByModel',
  '2': const [
    const {'1': 'NillPaymentBy', '2': 0},
    const {'1': 'OnlineTransfer', '2': 1},
    const {'1': 'CounterCash', '2': 2},
    const {'1': 'CounterCard', '2': 3},
    const {'1': 'CounterCheque', '2': 4},
  ],
};

/// Descriptor for `PaymentByModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List paymentByModelDescriptor = $convert.base64Decode('Cg5QYXltZW50QnlNb2RlbBIRCg1OaWxsUGF5bWVudEJ5EAASEgoOT25saW5lVHJhbnNmZXIQARIPCgtDb3VudGVyQ2FzaBACEg8KC0NvdW50ZXJDYXJkEAMSEQoNQ291bnRlckNoZXF1ZRAE');
@$core.Deprecated('Use billModelDescriptor instead')
const BillModel$json = const {
  '1': 'BillModel',
  '2': const [
    const {'1': 'BillNill', '2': 0},
    const {'1': 'Maintenance', '2': 1},
    const {'1': 'Renovation', '2': 2},
    const {'1': 'FacilityDepositFees', '2': 3},
    const {'1': 'FacilityUsageFees', '2': 4},
    const {'1': 'Panality', '2': 5},
    const {'1': 'MoveIn', '2': 6},
    const {'1': 'MoveOut', '2': 7},
  ],
};

/// Descriptor for `BillModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List billModelDescriptor = $convert.base64Decode('CglCaWxsTW9kZWwSDAoIQmlsbE5pbGwQABIPCgtNYWludGVuYW5jZRABEg4KClJlbm92YXRpb24QAhIXChNGYWNpbGl0eURlcG9zaXRGZWVzEAMSFQoRRmFjaWxpdHlVc2FnZUZlZXMQBBIMCghQYW5hbGl0eRAFEgoKBk1vdmVJbhAGEgsKB01vdmVPdXQQBw==');
@$core.Deprecated('Use announcementTypeModelDescriptor instead')
const AnnouncementTypeModel$json = const {
  '1': 'AnnouncementTypeModel',
  '2': const [
    const {'1': 'AnnouncementNill', '2': 0},
    const {'1': 'Announcement', '2': 1},
    const {'1': 'Notice', '2': 2},
  ],
};

/// Descriptor for `AnnouncementTypeModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List announcementTypeModelDescriptor = $convert.base64Decode('ChVBbm5vdW5jZW1lbnRUeXBlTW9kZWwSFAoQQW5ub3VuY2VtZW50TmlsbBAAEhAKDEFubm91bmNlbWVudBABEgoKBk5vdGljZRAC');
@$core.Deprecated('Use docBannerTypeModelDescriptor instead')
const DocBannerTypeModel$json = const {
  '1': 'DocBannerTypeModel',
  '2': const [
    const {'1': 'bNone', '2': 0},
    const {'1': 'Banner', '2': 1},
    const {'1': 'Document', '2': 2},
  ],
};

/// Descriptor for `DocBannerTypeModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List docBannerTypeModelDescriptor = $convert.base64Decode('ChJEb2NCYW5uZXJUeXBlTW9kZWwSCQoFYk5vbmUQABIKCgZCYW5uZXIQARIMCghEb2N1bWVudBAC');
@$core.Deprecated('Use accountRoleModelDescriptor instead')
const AccountRoleModel$json = const {
  '1': 'AccountRoleModel',
  '2': const [
    const {'1': 'ARNull', '2': 0},
    const {'1': 'SuperAdministrator', '2': 1},
    const {'1': 'ManagementAdmin', '2': 2},
    const {'1': 'SecurityGuard', '2': 3},
    const {'1': 'Technician', '2': 4},
    const {'1': 'User', '2': 5},
  ],
};

/// Descriptor for `AccountRoleModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List accountRoleModelDescriptor = $convert.base64Decode('ChBBY2NvdW50Um9sZU1vZGVsEgoKBkFSTnVsbBAAEhYKElN1cGVyQWRtaW5pc3RyYXRvchABEhMKD01hbmFnZW1lbnRBZG1pbhACEhEKDVNlY3VyaXR5R3VhcmQQAxIOCgpUZWNobmljaWFuEAQSCAoEVXNlchAF');
@$core.Deprecated('Use genderModelDescriptor instead')
const GenderModel$json = const {
  '1': 'GenderModel',
  '2': const [
    const {'1': 'GNull', '2': 0},
    const {'1': 'Male', '2': 1},
    const {'1': 'Female', '2': 2},
    const {'1': 'NotMentioned', '2': 3},
  ],
};

/// Descriptor for `GenderModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List genderModelDescriptor = $convert.base64Decode('CgtHZW5kZXJNb2RlbBIJCgVHTnVsbBAAEggKBE1hbGUQARIKCgZGZW1hbGUQAhIQCgxOb3RNZW50aW9uZWQQAw==');
@$core.Deprecated('Use unitRoleModelDescriptor instead')
const UnitRoleModel$json = const {
  '1': 'UnitRoleModel',
  '2': const [
    const {'1': 'URNull', '2': 0},
    const {'1': 'Owner', '2': 1},
    const {'1': 'Tenant', '2': 2},
  ],
};

/// Descriptor for `UnitRoleModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List unitRoleModelDescriptor = $convert.base64Decode('Cg1Vbml0Um9sZU1vZGVsEgoKBlVSTnVsbBAAEgkKBU93bmVyEAESCgoGVGVuYW50EAI=');
@$core.Deprecated('Use unitFurnishTypeModelDescriptor instead')
const UnitFurnishTypeModel$json = const {
  '1': 'UnitFurnishTypeModel',
  '2': const [
    const {'1': 'UFTNull', '2': 0},
    const {'1': 'Furnished', '2': 1},
    const {'1': 'SemiFurnished', '2': 2},
    const {'1': 'NonFurnished', '2': 3},
  ],
};

/// Descriptor for `UnitFurnishTypeModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List unitFurnishTypeModelDescriptor = $convert.base64Decode('ChRVbml0RnVybmlzaFR5cGVNb2RlbBILCgdVRlROdWxsEAASDQoJRnVybmlzaGVkEAESEQoNU2VtaUZ1cm5pc2hlZBACEhAKDE5vbkZ1cm5pc2hlZBAD');
@$core.Deprecated('Use unitStatusModelDescriptor instead')
const UnitStatusModel$json = const {
  '1': 'UnitStatusModel',
  '2': const [
    const {'1': 'USNull', '2': 0},
    const {'1': 'Sold', '2': 1},
    const {'1': 'UnSold', '2': 2},
    const {'1': 'Defective', '2': 3},
    const {'1': 'Rejected', '2': 4},
    const {'1': 'LoanRejected', '2': 5},
    const {'1': 'Requested', '2': 6},
  ],
};

/// Descriptor for `UnitStatusModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List unitStatusModelDescriptor = $convert.base64Decode('Cg9Vbml0U3RhdHVzTW9kZWwSCgoGVVNOdWxsEAASCAoEU29sZBABEgoKBlVuU29sZBACEg0KCURlZmVjdGl2ZRADEgwKCFJlamVjdGVkEAQSEAoMTG9hblJlamVjdGVkEAUSDQoJUmVxdWVzdGVkEAY=');
@$core.Deprecated('Use unitTypeModelDescriptor instead')
const UnitTypeModel$json = const {
  '1': 'UnitTypeModel',
  '2': const [
    const {'1': 'UTNull', '2': 0},
    const {'1': 'FreeHold', '2': 1},
    const {'1': 'LeaseHold', '2': 2},
  ],
};

/// Descriptor for `UnitTypeModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List unitTypeModelDescriptor = $convert.base64Decode('Cg1Vbml0VHlwZU1vZGVsEgoKBlVUTnVsbBAAEgwKCEZyZWVIb2xkEAESDQoJTGVhc2VIb2xkEAI=');
@$core.Deprecated('Use nationalityModelDescriptor instead')
const NationalityModel$json = const {
  '1': 'NationalityModel',
  '2': const [
    const {'1': 'NNull', '2': 0},
    const {'1': 'Malaysian', '2': 1},
    const {'1': 'NonMalaysian', '2': 2},
  ],
};

/// Descriptor for `NationalityModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List nationalityModelDescriptor = $convert.base64Decode('ChBOYXRpb25hbGl0eU1vZGVsEgkKBU5OdWxsEAASDQoJTWFsYXlzaWFuEAESEAoMTm9uTWFsYXlzaWFuEAI=');
@$core.Deprecated('Use emailTrackerModelDescriptor instead')
const EmailTrackerModel$json = const {
  '1': 'EmailTrackerModel',
  '2': const [
    const {'1': 'ETNull', '2': 0},
    const {'1': 'Registration', '2': 1},
    const {'1': 'ForgotPassword', '2': 2},
    const {'1': 'Promotion', '2': 3},
  ],
};

/// Descriptor for `EmailTrackerModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List emailTrackerModelDescriptor = $convert.base64Decode('ChFFbWFpbFRyYWNrZXJNb2RlbBIKCgZFVE51bGwQABIQCgxSZWdpc3RyYXRpb24QARISCg5Gb3Jnb3RQYXNzd29yZBACEg0KCVByb21vdGlvbhAD');
@$core.Deprecated('Use residenceTypeModelDescriptor instead')
const ResidenceTypeModel$json = const {
  '1': 'ResidenceTypeModel',
  '2': const [
    const {'1': 'RTNull', '2': 0},
    const {'1': 'Residential', '2': 1},
    const {'1': 'Commercial', '2': 2},
    const {'1': 'Industrial', '2': 3},
    const {'1': 'Agriculture', '2': 4},
    const {'1': 'SpecialPurpose', '2': 5},
    const {'1': 'Individual', '2': 6},
    const {'1': 'Villa', '2': 7},
    const {'1': 'MixedUse', '2': 8},
  ],
};

/// Descriptor for `ResidenceTypeModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List residenceTypeModelDescriptor = $convert.base64Decode('ChJSZXNpZGVuY2VUeXBlTW9kZWwSCgoGUlROdWxsEAASDwoLUmVzaWRlbnRpYWwQARIOCgpDb21tZXJjaWFsEAISDgoKSW5kdXN0cmlhbBADEg8KC0FncmljdWx0dXJlEAQSEgoOU3BlY2lhbFB1cnBvc2UQBRIOCgpJbmRpdmlkdWFsEAYSCQoFVmlsbGEQBxIMCghNaXhlZFVzZRAI');
@$core.Deprecated('Use stateListModelDescriptor instead')
const StateListModel$json = const {
  '1': 'StateListModel',
  '2': const [
    const {'1': 'SLNull', '2': 0},
    const {'1': 'Johor', '2': 1},
    const {'1': 'Kedah', '2': 2},
    const {'1': 'Kelantan', '2': 3},
    const {'1': 'KualaLumpur', '2': 4},
    const {'1': 'Labuan', '2': 5},
    const {'1': 'Melaka', '2': 6},
    const {'1': 'NegeriSembilan', '2': 7},
    const {'1': 'Pahang', '2': 8},
    const {'1': 'Perak', '2': 9},
    const {'1': 'Perlis', '2': 10},
    const {'1': 'Penang', '2': 11},
    const {'1': 'Sabah', '2': 12},
    const {'1': 'Sarawak', '2': 13},
    const {'1': 'Selangor', '2': 14},
    const {'1': 'Terengganu', '2': 15},
  ],
};

/// Descriptor for `StateListModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List stateListModelDescriptor = $convert.base64Decode('Cg5TdGF0ZUxpc3RNb2RlbBIKCgZTTE51bGwQABIJCgVKb2hvchABEgkKBUtlZGFoEAISDAoIS2VsYW50YW4QAxIPCgtLdWFsYUx1bXB1chAEEgoKBkxhYnVhbhAFEgoKBk1lbGFrYRAGEhIKDk5lZ2VyaVNlbWJpbGFuEAcSCgoGUGFoYW5nEAgSCQoFUGVyYWsQCRIKCgZQZXJsaXMQChIKCgZQZW5hbmcQCxIJCgVTYWJhaBAMEgsKB1NhcmF3YWsQDRIMCghTZWxhbmdvchAOEg4KClRlcmVuZ2dhbnUQDw==');
@$core.Deprecated('Use errorModelDescriptor instead')
const ErrorModel$json = const {
  '1': 'ErrorModel',
  '2': const [
    const {'1': 'Message', '3': 1, '4': 1, '5': 9, '10': 'Message'},
    const {'1': 'Code', '3': 2, '4': 1, '5': 5, '10': 'Code'},
    const {'1': 'IsOk', '3': 3, '4': 1, '5': 8, '10': 'IsOk'},
  ],
};

/// Descriptor for `ErrorModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorModelDescriptor = $convert.base64Decode('CgpFcnJvck1vZGVsEhgKB01lc3NhZ2UYASABKAlSB01lc3NhZ2USEgoEQ29kZRgCIAEoBVIEQ29kZRISCgRJc09rGAMgASgIUgRJc09r');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
