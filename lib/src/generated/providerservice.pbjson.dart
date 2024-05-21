///
//  Generated code. Do not modify.
//  source: providerservice.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use serProviderResponseDescriptor instead')
const SerProviderResponse$json = const {
  '1': 'SerProviderResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `SerProviderResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serProviderResponseDescriptor = $convert.base64Decode('ChNTZXJQcm92aWRlclJlc3BvbnNlEhoKCFJlc3BvbnNlGAEgASgJUghSZXNwb25zZRISCgRJc09rGAIgASgIUgRJc09rEikKBUVycm9yGAMgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvcg==');
@$core.Deprecated('Use serProviderRequestDescriptor instead')
const SerProviderRequest$json = const {
  '1': 'SerProviderRequest',
  '2': const [
    const {'1': 'SerProviderId', '3': 1, '4': 1, '5': 9, '10': 'SerProviderId'},
    const {'1': 'CompanyName', '3': 2, '4': 1, '5': 9, '10': 'CompanyName'},
    const {'1': 'Description', '3': 3, '4': 1, '5': 9, '10': 'Description'},
    const {'1': 'Status', '3': 4, '4': 1, '5': 14, '6': '.utility.StatusModel', '10': 'Status'},
    const {'1': 'DateCreated', '3': 5, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 6, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'Error', '3': 7, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
    const {'1': 'Logo', '3': 8, '4': 1, '5': 12, '10': 'Logo'},
    const {'1': 'residence', '3': 9, '4': 1, '5': 11, '6': '.residence.ResidenceRequest', '10': 'residence'},
    const {'1': 'ResidenceId', '3': 10, '4': 1, '5': 9, '10': 'ResidenceId'},
    const {'1': 'PhoneNumber', '3': 11, '4': 1, '5': 9, '10': 'PhoneNumber'},
    const {'1': 'Link', '3': 12, '4': 1, '5': 9, '10': 'Link'},
    const {'1': 'Price', '3': 13, '4': 1, '5': 9, '10': 'Price'},
    const {'1': 'Natureofbusiness', '3': 14, '4': 1, '5': 9, '10': 'Natureofbusiness'},
  ],
};

/// Descriptor for `SerProviderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serProviderRequestDescriptor = $convert.base64Decode('ChJTZXJQcm92aWRlclJlcXVlc3QSJAoNU2VyUHJvdmlkZXJJZBgBIAEoCVINU2VyUHJvdmlkZXJJZBIgCgtDb21wYW55TmFtZRgCIAEoCVILQ29tcGFueU5hbWUSIAoLRGVzY3JpcHRpb24YAyABKAlSC0Rlc2NyaXB0aW9uEiwKBlN0YXR1cxgEIAEoDjIULnV0aWxpdHkuU3RhdHVzTW9kZWxSBlN0YXR1cxIgCgtEYXRlQ3JlYXRlZBgFIAEoCVILRGF0ZUNyZWF0ZWQSIgoMRGF0ZU1vZGlmaWVkGAYgASgJUgxEYXRlTW9kaWZpZWQSKQoFRXJyb3IYByABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9yEhIKBExvZ28YCCABKAxSBExvZ28SOQoJcmVzaWRlbmNlGAkgASgLMhsucmVzaWRlbmNlLlJlc2lkZW5jZVJlcXVlc3RSCXJlc2lkZW5jZRIgCgtSZXNpZGVuY2VJZBgKIAEoCVILUmVzaWRlbmNlSWQSIAoLUGhvbmVOdW1iZXIYCyABKAlSC1Bob25lTnVtYmVyEhIKBExpbmsYDCABKAlSBExpbmsSFAoFUHJpY2UYDSABKAlSBVByaWNlEioKEE5hdHVyZW9mYnVzaW5lc3MYDiABKAlSEE5hdHVyZW9mYnVzaW5lc3M=');
@$core.Deprecated('Use serProviderLookupModelDescriptor instead')
const SerProviderLookupModel$json = const {
  '1': 'SerProviderLookupModel',
  '2': const [
    const {'1': 'SerProviderId', '3': 1, '4': 1, '5': 9, '10': 'SerProviderId'},
  ],
};

/// Descriptor for `SerProviderLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serProviderLookupModelDescriptor = $convert.base64Decode('ChZTZXJQcm92aWRlckxvb2t1cE1vZGVsEiQKDVNlclByb3ZpZGVySWQYASABKAlSDVNlclByb3ZpZGVySWQ=');
@$core.Deprecated('Use serProvidersListDescriptor instead')
const SerProvidersList$json = const {
  '1': 'SerProvidersList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.providerservice.SerProviderRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `SerProvidersList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serProvidersListDescriptor = $convert.base64Decode('ChBTZXJQcm92aWRlcnNMaXN0EjkKBUl0ZW1zGAEgAygLMiMucHJvdmlkZXJzZXJ2aWNlLlNlclByb3ZpZGVyUmVxdWVzdFIFSXRlbXMSKQoFRXJyb3IYAiABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9y');
@$core.Deprecated('Use resSerProviderLookupModelDescriptor instead')
const ResSerProviderLookupModel$json = const {
  '1': 'ResSerProviderLookupModel',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
};

/// Descriptor for `ResSerProviderLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resSerProviderLookupModelDescriptor = $convert.base64Decode('ChlSZXNTZXJQcm92aWRlckxvb2t1cE1vZGVsEiAKC1Jlc2lkZW5jZUlkGAEgASgJUgtSZXNpZGVuY2VJZA==');
