import 'package:mero_discount/data/functions/api/mero_api.dart';
import 'package:mero_discount/static/Links/url.dart';

class Auth {
  signUp(
      {required String name,
      required String email,
      required String phone,
      required String passsword,
      required String confirmPassword}) async {
    await meroApi.post(signUpUrl, {
      "name": name,
      "email": email,
      "phone": phone,
      "password": passsword,
      "confirm_password": confirmPassword
    });
  }

  login(
    String email,
    String passsword,
  ) async {
    Map body;
    if (email.contains("@")) {
      body = {"email": email, "password": passsword};
    } else {
      body = {"phone": email, "password": passsword};
    }
    await meroApi.post(loginUrl, body);
  }
}

final Auth authApi = Auth();
