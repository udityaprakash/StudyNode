import 'dart:convert';

class MyUserModel {
  String? access_token;
  String? tokentype;
  int? expires_in;
  String? X_ContextId;
  String? X_UserId;
  String? X_LogoId;
  String? X_RX;
  bool? PChangeSetting;
  bool? PChangeStatus;
  String? SessionId;
  String? X_Token;
  String? issued;
  String? expires;

  // dynamic email;
  // bool isContact;
  // int userId;

  MyUserModel(
      {required access_token,
      required tokentype,
      required expires_in,
      required X_ContextId,
      required X_UserId,
      required X_LogoId,
      required X_RX,
      required PChangeSetting,
      required PChangeStatus,
      required SessionId,
      required X_Token,
      required issued,
      required expires
      // required this.authKey,
      // required this.city,
      // required this.contact,
      // required this.email,
      // required this.isContact,
      // required this.userId,
      });

  factory MyUserModel.fromJson(Map<String, dynamic> json) => MyUserModel(
        access_token: json['access_token'],
        tokentype: json['token_type'],
        expires_in: json['expires_in'],
        X_ContextId: json['X-ContextId'],
        X_UserId: json['X-UserId'],
        X_LogoId: json['X-LogoId'],
        X_RX: json['X-RX'],
        PChangeSetting: json['PChangeSetting'],
        PChangeStatus: json['PChangeStatus'],
        SessionId: json['SessionId'],
        X_Token: json['X_Token'],
        issued: json['.issued'],
        expires: json['.expires'],
      );

  static Map<String, dynamic> toMap(MyUserModel model) => 
    <String, dynamic> {
      'access_token': model.access_token,
      'token_type': model.tokentype,
      'expires_in': model.expires_in,
      'X-ContextId': model.X_ContextId,
      'X-UserId': model.X_UserId,
      'X-LogoId': model.X_LogoId,
      'X-RX': model.X_RX,
      'PChangeSetting': model.PChangeSetting,
      'PChangeStatus': model.PChangeStatus,
      'SessionId': model.SessionId,
      'X_Token': model.X_Token,
      '.issued': model.issued,
      '.expires': model.expires,
    };
  static String serialize(MyUserModel model) =>
    json.encode(MyUserModel.toMap(model));

  static MyUserModel deserialize(String json) =>
    MyUserModel.fromJson(jsonDecode(json));

}