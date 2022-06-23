import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tradenapp/models/sign_up_model.dart';

class SignUpService {
  Future<void> sendOTP(AuthOTP optData) async {
    final uri = Uri.parse(
        'tradenapp-env.us-east-1.elasticbeanstalk.com/api/v1/generate-otp/');

    print("OTP Values --" + optData.toString());
    String body = jsonEncode(optData.toJson());
    print("Body -- " + body);
    try {
      final resp = await http.post(
        uri,
        body: body,
      );

      print("Response Body " + resp.body);
      if (resp.body == '200ok') print('OTP send Successful');
    } catch (e) {
      print('Error -- ' + e.toString());
    }
  }
}
