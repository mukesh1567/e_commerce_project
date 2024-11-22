import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as httpPack;
import 'app_exceptions.dart';

///http package
class ApiHelper {
  ///get API
  Future<dynamic> getApi({required String url}) async {
    var uri = Uri.parse(url);

    try {
      var resp = await httpPack.get(uri);
      return returnJsonResponse(resp);
    } on SocketException catch (e) {
      throw (FetchDataException(errorMsg: "No internet"));
    }
  }

  ///post API
  Future<dynamic> postApi(
      {required String url, Map<String, dynamic>? bodyParameters}) async {
    var uri = Uri.parse(url);

    var resp = await httpPack.post(uri, body: bodyParameters ?? {});
    if (resp.statusCode == 200) {
      var mData = jsonDecode(resp.body);
      return mData;
    } else {
      return null;
    }
  }
}

///create function
void returnJsonResponse(httpPack.Response response) {
  switch (response.statusCode) {
    case 200:
      {
        var mData = jsonDecode(response.body);
        return mData;
      }

    case 400:
      throw BadRequestException(errorMsg: response.body.toString());

    case 401:
    case 403:
      throw UnAuthorisedException(errorMsg: response.body.toString());

    case 500:
    default:
      throw FetchDataException(
          errorMsg:
              "Error occured while Communication with Server with StatusCode : ${response.statusCode}");
  }
}
