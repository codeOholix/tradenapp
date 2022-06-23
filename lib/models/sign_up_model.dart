//import 'package:email_validator/email_validator.dart';

class AuthOTP {
  String? name;
  String? email_phone;

  AuthOTP({this.name, this.email_phone});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    //if (EmailValidator.validate(email_phone)) {
    data['type'] = 'email';
    /*} else {
      data['type'] = 'number';
    }*/
    data['username'] = email_phone;
    return data;
  }
}
