import 'package:dio/dio.dart';

class DioException implements Exception {
  DioException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioErrorType.connectTimeout:
        message = "Connection timeout with API server";
        break;

      case DioErrorType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioErrorType.response:
        print(dioError.response!.statusCode!);
        print(dioError.response!.data!);
        message = _handleError(dioError);
        break;
      case DioErrorType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      case DioErrorType.other:
        message = "Connection to API server failed due to internet connection";
        break;
      default:
        message = "Something went wrong";
        break;
    }
  }

  String? message;

  String _handleError(DioError dioError) {
    switch (dioError.response!.statusCode!) {
      case 400:
        return dioError.response!.data != null
            ? dioError.response!.data["error"]
            : "Bad Request";
      case 404:
        return "Something went wrong";  
      case 500:
        return "Internal server error";
      case 502:
        return "Internal server error";
      default:
        return "Something went wrong";
    }
  }

  @override
  String toString() => message!;
}
