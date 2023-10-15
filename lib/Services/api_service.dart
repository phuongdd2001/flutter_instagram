import 'package:dio/dio.dart';
import 'package:flutter_instagram/Services/requests.dart';
import 'package:flutter_instagram/locator.dart';

abstract class ApiService {
  final Request request;

  ApiService(this.request);

  Future<Response> getInstagramUser(String userName);
}


class Api extends ApiService{
  Api(Request request) : super(request);

  
  @override
  Future<Response> getInstagramUser(String userName)async {
  
    return await request.callRequest("https://www.instagram.com/"+userName+"/channel/?__a=1");
   
  }

}