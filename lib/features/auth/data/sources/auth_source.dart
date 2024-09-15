import '../models/user_model.dart';

abstract class AuthSource {
  Future<UserModel> signIn(String email, String password);
}

class AuthSourceImpl implements AuthSource {
  @override
  Future<UserModel> signIn(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    return UserModel(
      id: '1',
      email: email,
      name: 'John Doe',
    );
  }
}