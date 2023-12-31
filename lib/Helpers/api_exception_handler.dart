import 'package:dio/dio.dart';
import 'package:flutter_instagram/Helpers/custom_exceptions.dart';


class ApiHandler{




 static Future handle(Response httpResponse )async{
      
      switch (httpResponse.statusCode) {
      case 200:
      
        return httpResponse;
      case 400:
        throw Future.error(BadRequestException(""));
      case 401:
      case 403:
        throw Future.error( UnauthorisedException(""));
      case 500:
        throw Future.error (BadRequestException(""));
      default:
        throw Future.error(FetchDataException(
          'Error occured while Communication with Server with StatusCode: ${httpResponse.statusCode}'));
    }
  }
}