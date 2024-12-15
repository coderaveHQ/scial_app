import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {

  static String get supabaseUrl => _getKey('SUPABASE_URL');
  static String get supabaseAnonKey => _getKey('SUPABASE_ANON_KEY');

  static String _getKey(String key) {
    return dotenv.env[key]!;
  }
}