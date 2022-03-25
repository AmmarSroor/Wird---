import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init(){
    dio = Dio(
      BaseOptions(
        baseUrl: "https://student.wird.app/api/",
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> loginGetToken({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    return await dio.post(
      path,
      data: data,
    );
  }

  static Future<Response> getUserData({
    required String path,
    required String token,
    required Map<String, dynamic> query,
  }) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token',
    };
    return await dio.get(
      path,
      queryParameters: query,
    );
  }

  static Future<Response> signUp({
    required String path,
    required dynamic data,
  }) async {
    return await dio.post(
      path,
      data: data,
    );
  }

  static Future<Response> postPointRecords({
    required String path,
    required String token,
    required Map<String, dynamic> data,
  }) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token',
    };
    return await dio.post(
      path,
      data: data,
    );
  }

  static Future<Response> checkUsername$Password({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    return await dio.post(
      path,
      data: data,
    );
  }

  static Future<Response> putPointRecords({
    required String path,
    required String token,
    required Map<String, dynamic> data,
  }) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token ',
    };
    return await dio.put(
      path,
      data: data,
    );
  }

  static Future<Response> getTopStudents({
    required String path,
    required String token,
  }) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token ',
    };
    return await dio.get(
      path,
    );
  }

  static Future<Response> getAnnouncements({
    required String path,
    required String token,
  }) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token ',
    };
    return await dio.get(
      path,
    );
  }

  static Future<Response> getPointTemplates({
    required String path,
    required String token,
  }) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token ',
    };
    return await dio.get(
      path,
    );
  }

  static Future<Response> getAdminIno({
    required String path,
    required String token,
  }) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token ',
    };
    return await dio.get(
      path,
    );
  }

  static Future<Response> getPointRecords({
    required String path,
    required String token,
  }) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token ',
    };
    return await dio.get(
      path,
    );
  }



  static Future<Response> getAdvertisements({
    required String path,
    required String token
  }) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token ',
    };
    return await dio.get(
      path,
    );
  }

  static Future<Response> getTotalPointsByDay({
    required String path,
    required String token,
  }) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token ',
    };
    return await dio.get(
      path,
    );
  }

  static Future<Response> getTotalPointsByType({
    required String path,
    required String token,
  }) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token ',
    };
    return await dio.get(
      path,
    );
  }

  static Future<Response> getDailyPointsByType({
    required String path,
    required String token,
  }) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token ',
    };
    return await dio.get(
      path,
    );
  }

  static Future<Response> getCompetition({
    required String path,
  }) async {
    return await dio.get(
      path,
    );
  }

}