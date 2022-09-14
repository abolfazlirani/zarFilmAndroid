import 'dart:convert';
import 'dart:io';

import 'package:dio/adapter.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart' as gt;
import 'package:zarfilm_android_tv/app/common/app_config.dart';

import 'RequestInterface.dart';
import 'SharedHelper.dart';

class ApiRequster{
  static const int SEND_TIMEOUT = 10000;
  static const int RECEIVE_TIMEOUT = 3000;
  static const int CONNECT_TIMEOUT = 10000;

  static gt.Dio _create({bool useProxy = false}) {
    gt.Dio _dio = new gt.Dio();
    // 全局属性：请求前缀、连接超时时间、响应超时时间
    gt.BaseOptions options = new gt.BaseOptions(
        sendTimeout: SEND_TIMEOUT,
        connectTimeout: CONNECT_TIMEOUT,
        receiveTimeout: RECEIVE_TIMEOUT,
        receiveDataWhenStatusError:true
    );
    _dio = new gt.Dio(options);

    (_dio?.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
      //这一段是解决https抓包的问题
      client.badCertificateCallback = (X509Certificate cert, String host, int port) {
        return true;
      };
      //设置花瓶的代理ip

    };
    return _dio;
  }
  final RequestInterface _requestInterface;
  final bool develperModel;

  ApiRequster(this._requestInterface,{this.develperModel = false}){
    _create();
  }

  static int MHETOD_GET = 1;
  static int MHETOD_POST = 2;
  static int MHETOD_DELETE = 4;
  static int MHETOD_PATCH = 3;
  String mainUrl = Constant.HTTP_HOST;

  final encoding = Encoding.getByName('utf-8');

  static final staticHeaders = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };

  void request(String endPointUrl,int reqMode,int reqCode,{bool daynamicUrl = false,body,bool useToken=false} ) async{

    SharedHelper sharedHelper =await SharedHelper.getInstance();

    if (!sharedHelper.getIsFirst()) {
      mainUrl = sharedHelper.getWebdomin();
    }
    if(develperModel)print("request Code is $reqCode started " );

    _requestInterface.onStartReuqest(reqCode);


    Uri uri = Uri.parse(daynamicUrl?endPointUrl:mainUrl+endPointUrl);
    final headers = staticHeaders;

    if(useToken){
      String token = await _getTokenFromSharedPrefence();
      headers['Authorization'] = "Bearer "+token;
    }
    if(develperModel)print("uri  $reqCode = "+uri.toString() +"   = ${useToken}");


    try {

      switch(reqMode){
        case 1:
          try {
            var response = await gt.Dio(gt.BaseOptions(headers: headers)).get(daynamicUrl?endPointUrl:mainUrl+endPointUrl);
            if(develperModel)print("uri  $reqCode = "+uri.toString());

            final statusCode = response.statusCode;
            if(response.statusCode == 200||response.statusCode == 201){
              String responseBody = response.data.toString();
              if(develperModel)print("onSucces body $reqCode = "+jsonEncode(response.data));
              _requestInterface.onSucces(jsonEncode(response.data),reqCode);

            }else{
              _requestInterface.onError(statusCode.toString(),reqCode,jsonEncode(response.data));
              if(develperModel)print("onError Body $reqCode = "+response.data);
            }
          } catch (e) {
            print(e);
          }


          break;
        case 2:
          var response = await gt.Dio(gt.BaseOptions(headers: headers,)).post(daynamicUrl?endPointUrl:mainUrl+endPointUrl,data:body, );
          if(develperModel)print("uri  $reqCode = "+uri.toString());

          final statusCode = response.statusCode;
          print('ApiRequster.request = $body');
          if(response.statusCode == 200||response.statusCode == 201){
            String responseBody = response.data.toString();
            if(develperModel)print("onSucces body $reqCode = "+jsonEncode(response.data));
            _requestInterface.onSucces(jsonEncode(response.data),reqCode);

          }else{
            _requestInterface.onError(statusCode.toString(),reqCode,jsonEncode(response.data));
            if(develperModel)print("onError Body $reqCode = "+response.data);
          }
          break;
        case 3:
          var response = await gt.Dio(gt.BaseOptions(headers: headers,)).patch(daynamicUrl?endPointUrl:mainUrl+endPointUrl,data:jsonEncode(body), );
          if(develperModel)print("uri  $reqCode = "+uri.toString());

          final statusCode = response.statusCode;
          if(response.statusCode == 200||response.statusCode == 201){
            String responseBody = response.data.toString();
            if(develperModel)print("onSucces body $reqCode = "+jsonEncode(response.data));
            _requestInterface.onSucces(jsonEncode(response.data),reqCode);

          }else{
            _requestInterface.onError(statusCode.toString(),reqCode,jsonEncode(response.data));
            if(develperModel)print("onError Body $reqCode = "+response.data);
          }
          break;
        case 4:
          var response = await gt.Dio(gt.BaseOptions(headers: headers,)).delete(daynamicUrl?endPointUrl:mainUrl+endPointUrl,data:jsonEncode(body), );
          if(develperModel)print("uri  $reqCode = "+uri.toString());

          final statusCode = response.statusCode;
          if(response.statusCode == 200||response.statusCode == 201){
            String responseBody = response.data.toString();
            if(develperModel)print("onSucces body $reqCode = "+jsonEncode(response.data));
            _requestInterface.onSucces(jsonEncode(response.data),reqCode);

          }else{
            _requestInterface.onError(statusCode.toString(),reqCode,jsonEncode(response.data));
            if(develperModel)print("onError Body $reqCode = "+response.data);
          }
          break;
      }


    } on gt.DioError  catch (ex) {
      try {
        _requestInterface.onError(ex.response!.statusCode.toString(),reqCode,jsonEncode(ex.response!.data));
        if(develperModel)print("onError Body $reqCode = "+ex.response!.data);
      }  catch (e) {
        // TODO
        print('ApiRequster.request 2= ${ex.response!.data} - ${ex.requestOptions.data} - ${ex.response!.statusCode}');
        _requestInterface.onError(e.toString(),reqCode,"null");
        if(develperModel)print("onError catch = "+e.toString());

      }
    } catch  (e) {
      // TODO
      print('ApiRequster.request 1= $e');
      _requestInterface.onError(e.toString(),reqCode,"null");
      if(develperModel)print("onError catch = "+e.toString());

    }
  }
  /* void request(String endPointUrl,int reqMode,int reqCode,{bool daynamicUrl = false,body,bool useToken=false} ) async{

     SharedHelper sharedHelper =await SharedHelper.getInstance();

     if (!sharedHelper.getIsFirst()) {
       mainUrl = sharedHelper.getWebdomin();
     }
     if(develperModel)print("request Code is $reqCode started " );

     _requestInterface.onStartReuqest(reqCode);

     endPointUrl =await handleUrlWithLanguage(endPointUrl);

      Uri uri = Uri.parse(daynamicUrl?endPointUrl:mainUrl+endPointUrl);
      final headers = staticHeaders;

     if(useToken){
       String token = await _getTokenFromSharedPrefence();
         headers['Authorization'] = "Bearer "+token;
     }
     if(develperModel)print("uri  $reqCode = "+uri.toString() +"   = ${useToken}");


     try {

       switch(reqMode){
         case 1:
           Response response = await get(
             uri,
             headers: headers,
           );
           if(develperModel)print("uri  $reqCode = "+uri.toString());

           final statusCode = response.statusCode;
           if(response.statusCode == 200||response.statusCode == 201){
             String responseBody = response.body;
             _requestInterface.onSucces(responseBody,reqCode);
             if(develperModel)print("onSucces body $reqCode = "+response.body);

           }else{
             _requestInterface.onError(statusCode.toString(),reqCode,response.body);
             if(develperModel)print("onError Body $reqCode = "+response.body);
           }
           break;
          case 2:
            Response response = await post(
              uri,
              headers: headers,
              body: jsonEncode(body),
              encoding: encoding,

            );
            final statusCode = response.statusCode;
            if(develperModel)print("response.statusCode $reqCode = "+response.statusCode.toString());

            if(response.statusCode == 200||response.statusCode == 201){
              String responseBody = response.body;
              _requestInterface.onSucces(responseBody,reqCode);
              if(develperModel)print("onSucces body $reqCode = "+response.body);

            }else{
              _requestInterface.onError(statusCode.toString(),reqCode,response.body);
              if(develperModel)print("onError Body $reqCode = "+response.body);
            }
           break;
         case 3:
            Response response = await patch(
              uri,
              headers: headers,
              body: jsonEncode(body),
              encoding: encoding,
            );
            final statusCode = response.statusCode;
            if(develperModel)print("response.statusCode $reqCode = "+response.statusCode.toString());

            if(response.statusCode == 200||response.statusCode == 201){
              String responseBody = response.body;
              _requestInterface.onSucces(responseBody,reqCode);
              if(develperModel)print("onSucces body $reqCode = "+response.body);

            }else{
              _requestInterface.onError(statusCode.toString(),reqCode,response.body);
              if(develperModel)print("onError Body $reqCode = "+response.body);
            }
           break;
         case 4:
            Response response = await delete(
              uri,
              headers: headers,
              body: jsonEncode(body),
              encoding: encoding,
            );
            final statusCode = response.statusCode;
            if(develperModel)print("response.statusCode $reqCode = "+response.statusCode.toString());

            if(response.statusCode == 200||response.statusCode == 201){
              String responseBody = response.body;
              _requestInterface.onSucces(responseBody,reqCode);
              if(develperModel)print("onSucces body $reqCode = "+response.body);

            }else{
              _requestInterface.onError(statusCode.toString(),reqCode,response.body);
              if(develperModel)print("onError Body = $reqCode  = "+response.body);
            }
           break;
       }


     } on Exception catch  (e) {
       // TODO
       _requestInterface.onError(e.toString(),reqCode,"null");
       if(develperModel)print("onError catch = "+e.toString());

     }
   }*/


  Future<String> _getTokenFromSharedPrefence() async{

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    return token??"";
  }




}