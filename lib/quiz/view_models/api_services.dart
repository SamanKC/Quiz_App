import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/result.dart';

class ApiServices {
  final Dio _dio = Dio();

  final baseUrl =
      'http://opentdb.com/api.php?amount=10&category=18&difficulty=easy';

  Future<List<Result>> getQuizfromApi() async {
    List<Result> quizList = [];
    try {
      final response = await _dio.get(baseUrl);
      // var parsed = jsonDecode(response.data);
      final decodedResponse =
          Map<String, dynamic>.from(response.data);
      final items = List.from(decodedResponse["results"]);
      // final quiz= items["results"];

      quizList = items.map((e) => Result.fromJson(e)).toList();
      // final  items = response.data['results'];
      // quizList = items.map((e) => Result.fromJson(e)).toList();

      return quizList;
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectionError) {
        print('catched');
      }
      if (e.type == DioErrorType.badResponse) {
        print('check your connection');
      }

      if (e.type == DioErrorType.receiveTimeout) {
        print('unable to connect to the server');
      }

      if (e.type == DioErrorType.unknown) {
        print('Something went wrong');
      }
      print(e);
      return [];
    } catch (e) {
      print(e);
      return [];
    }
  }
}
