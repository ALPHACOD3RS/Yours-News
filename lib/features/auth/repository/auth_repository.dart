import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final Dio _dio;

  AuthRepository(this._dio);

  Future<void> login(String email, String password) async {
    try {
      final response = await _dio.post(
        'https://api.gataama.com/user/login',
        data: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
       
        final token = response.data['token'];
        if (token == null) {
          throw Exception('No token received');
        }

        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('auth_token', token);
      } else {
        throw Exception('Login failed');
      }
    } on DioException catch (e) {
      throw Exception('Login failed: ${e.message}');
    } catch (e, stackTrace) {
      throw Exception('Login failed: ${e.toString()}');
    }
  }
}
