import 'package:hooks_riverpod/hooks_riverpod.dart';

final appEnvProvider = Provider<String>((ref) => throw UnimplementedError());

extension AppEnvExtension on String {
  String get baseUrl => "https://api.gataama.com";
}
