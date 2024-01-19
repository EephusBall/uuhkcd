import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchSugaNameCall {
  static Future<ApiCallResponse> call({
    String? parameter = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Suga Name',
      apiUrl:
          'https://mobile.uuh.ulsan.kr/uuhrestapi/suga/getsearchbyname?sugaName=$parameter',
      callType: ApiCallType.GET,
      headers: {
        'X-API-Key': '68ea30f8cbffd89b',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? sugaData(dynamic response) => getJsonField(
        response,
        r'''$.sugaDTOList''',
        true,
      ) as List?;
  static List<String>? sugaNameData(dynamic response) => (getJsonField(
        response,
        r'''$.sugaDTOList[:].chrName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SearchSugaChrCodeCall {
  static Future<ApiCallResponse> call({
    String? parameter = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Suga ChrCode',
      apiUrl:
          'https://mobile.uuh.ulsan.kr/uuhrestapi/suga/getsearchbychrcode?chrCode=$parameter',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'X-API-Key': '68ea30f8cbffd89b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic sugaDetail(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class UuhMobileLoginCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? password = '',
    String? appname = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'uuh mobile login',
      apiUrl:
          'https://mobile.uuh.ulsan.kr/UUHServer/logindashboard?id=$id&password=$password&appname=$appname',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic loginresult(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
