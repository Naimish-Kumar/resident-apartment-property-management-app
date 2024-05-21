///
//  Generated code. Do not modify.
//  source: docbanner.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use docBannerResponseDescriptor instead')
const DocBannerResponse$json = const {
  '1': 'DocBannerResponse',
  '2': const [
    const {'1': 'Response', '3': 1, '4': 1, '5': 9, '10': 'Response'},
    const {'1': 'IsOk', '3': 2, '4': 1, '5': 8, '10': 'IsOk'},
    const {'1': 'Error', '3': 3, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `DocBannerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List docBannerResponseDescriptor = $convert.base64Decode('ChFEb2NCYW5uZXJSZXNwb25zZRIaCghSZXNwb25zZRgBIAEoCVIIUmVzcG9uc2USEgoESXNPaxgCIAEoCFIESXNPaxIpCgVFcnJvchgDIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use docBannerRequestDescriptor instead')
const DocBannerRequest$json = const {
  '1': 'DocBannerRequest',
  '2': const [
    const {'1': 'DocBannerId', '3': 1, '4': 1, '5': 9, '10': 'DocBannerId'},
    const {'1': 'Title', '3': 2, '4': 1, '5': 9, '10': 'Title'},
    const {'1': 'Description', '3': 3, '4': 1, '5': 9, '10': 'Description'},
    const {'1': 'DocBannerDocs', '3': 4, '4': 3, '5': 11, '6': '.docbanner.DocBannerDocsModel', '10': 'DocBannerDocs'},
    const {'1': 'DocBannerType', '3': 5, '4': 1, '5': 14, '6': '.utility.DocBannerTypeModel', '10': 'DocBannerType'},
    const {'1': 'DateCreated', '3': 6, '4': 1, '5': 9, '10': 'DateCreated'},
    const {'1': 'DateModified', '3': 7, '4': 1, '5': 9, '10': 'DateModified'},
    const {'1': 'ResidenceId', '3': 8, '4': 1, '5': 9, '10': 'ResidenceId'},
    const {'1': 'Error', '3': 9, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `DocBannerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List docBannerRequestDescriptor = $convert.base64Decode('ChBEb2NCYW5uZXJSZXF1ZXN0EiAKC0RvY0Jhbm5lcklkGAEgASgJUgtEb2NCYW5uZXJJZBIUCgVUaXRsZRgCIAEoCVIFVGl0bGUSIAoLRGVzY3JpcHRpb24YAyABKAlSC0Rlc2NyaXB0aW9uEkMKDURvY0Jhbm5lckRvY3MYBCADKAsyHS5kb2NiYW5uZXIuRG9jQmFubmVyRG9jc01vZGVsUg1Eb2NCYW5uZXJEb2NzEkEKDURvY0Jhbm5lclR5cGUYBSABKA4yGy51dGlsaXR5LkRvY0Jhbm5lclR5cGVNb2RlbFINRG9jQmFubmVyVHlwZRIgCgtEYXRlQ3JlYXRlZBgGIAEoCVILRGF0ZUNyZWF0ZWQSIgoMRGF0ZU1vZGlmaWVkGAcgASgJUgxEYXRlTW9kaWZpZWQSIAoLUmVzaWRlbmNlSWQYCCABKAlSC1Jlc2lkZW5jZUlkEikKBUVycm9yGAkgASgLMhMudXRpbGl0eS5FcnJvck1vZGVsUgVFcnJvcg==');
@$core.Deprecated('Use docBannerLookupModelDescriptor instead')
const DocBannerLookupModel$json = const {
  '1': 'DocBannerLookupModel',
  '2': const [
    const {'1': 'DocBannerId', '3': 1, '4': 1, '5': 9, '10': 'DocBannerId'},
  ],
};

/// Descriptor for `DocBannerLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List docBannerLookupModelDescriptor = $convert.base64Decode('ChREb2NCYW5uZXJMb29rdXBNb2RlbBIgCgtEb2NCYW5uZXJJZBgBIAEoCVILRG9jQmFubmVySWQ=');
@$core.Deprecated('Use docBannerDocLookupModelDescriptor instead')
const DocBannerDocLookupModel$json = const {
  '1': 'DocBannerDocLookupModel',
  '2': const [
    const {'1': 'DocBannerDocId', '3': 1, '4': 1, '5': 9, '10': 'DocBannerDocId'},
  ],
};

/// Descriptor for `DocBannerDocLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List docBannerDocLookupModelDescriptor = $convert.base64Decode('ChdEb2NCYW5uZXJEb2NMb29rdXBNb2RlbBImCg5Eb2NCYW5uZXJEb2NJZBgBIAEoCVIORG9jQmFubmVyRG9jSWQ=');
@$core.Deprecated('Use resDocBannerLookupModelDescriptor instead')
const ResDocBannerLookupModel$json = const {
  '1': 'ResDocBannerLookupModel',
  '2': const [
    const {'1': 'ResidenceId', '3': 1, '4': 1, '5': 9, '10': 'ResidenceId'},
  ],
};

/// Descriptor for `ResDocBannerLookupModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resDocBannerLookupModelDescriptor = $convert.base64Decode('ChdSZXNEb2NCYW5uZXJMb29rdXBNb2RlbBIgCgtSZXNpZGVuY2VJZBgBIAEoCVILUmVzaWRlbmNlSWQ=');
@$core.Deprecated('Use docBannersListDescriptor instead')
const DocBannersList$json = const {
  '1': 'DocBannersList',
  '2': const [
    const {'1': 'Items', '3': 1, '4': 3, '5': 11, '6': '.docbanner.DocBannerRequest', '10': 'Items'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `DocBannersList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List docBannersListDescriptor = $convert.base64Decode('Cg5Eb2NCYW5uZXJzTGlzdBIxCgVJdGVtcxgBIAMoCzIbLmRvY2Jhbm5lci5Eb2NCYW5uZXJSZXF1ZXN0UgVJdGVtcxIpCgVFcnJvchgCIAEoCzITLnV0aWxpdHkuRXJyb3JNb2RlbFIFRXJyb3I=');
@$core.Deprecated('Use docBannerDocsModelDescriptor instead')
const DocBannerDocsModel$json = const {
  '1': 'DocBannerDocsModel',
  '2': const [
    const {'1': 'DocBannerDocsId', '3': 1, '4': 1, '5': 9, '10': 'DocBannerDocsId'},
    const {'1': 'File', '3': 2, '4': 1, '5': 12, '10': 'File'},
    const {'1': 'FileType', '3': 3, '4': 1, '5': 9, '10': 'FileType'},
    const {'1': 'FileName', '3': 4, '4': 1, '5': 9, '10': 'FileName'},
    const {'1': 'DocBanner', '3': 5, '4': 1, '5': 11, '6': '.docbanner.DocBannerRequest', '10': 'DocBanner'},
    const {'1': 'Error', '3': 6, '4': 1, '5': 11, '6': '.utility.ErrorModel', '10': 'Error'},
  ],
};

/// Descriptor for `DocBannerDocsModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List docBannerDocsModelDescriptor = $convert.base64Decode('ChJEb2NCYW5uZXJEb2NzTW9kZWwSKAoPRG9jQmFubmVyRG9jc0lkGAEgASgJUg9Eb2NCYW5uZXJEb2NzSWQSEgoERmlsZRgCIAEoDFIERmlsZRIaCghGaWxlVHlwZRgDIAEoCVIIRmlsZVR5cGUSGgoIRmlsZU5hbWUYBCABKAlSCEZpbGVOYW1lEjkKCURvY0Jhbm5lchgFIAEoCzIbLmRvY2Jhbm5lci5Eb2NCYW5uZXJSZXF1ZXN0UglEb2NCYW5uZXISKQoFRXJyb3IYBiABKAsyEy51dGlsaXR5LkVycm9yTW9kZWxSBUVycm9y');
