import 'dart:convert';
import 'package:flutter/services.dart';
import 'user.dart';

///Task #1: Understanding runtime errors. Moreover, provide context-aware suggestions
///
/// AI request: what's wrong with code below?

class UserRepository {
  Future<List<UserImpl>> getUsers() async {
    final jsonString =
        await rootBundle.loadString('assets/users/users.json');
    final parsed = json.decode(jsonString).cast<Map<String, dynamic>>();
    return parsed.map<UserImpl>((json) => UserImpl.fromJson(json));
  }
}