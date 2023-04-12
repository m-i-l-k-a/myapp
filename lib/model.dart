// To parse this JSON data, do
//
//     final walletDataModel = walletDataModelFromJson(jsonString);

import 'dart:convert';

WalletDataModel walletDataModelFromJson(String str) => WalletDataModel.fromJson(json.decode(str));

String walletDataModelToJson(WalletDataModel data) => json.encode(data.toJson());

class WalletDataModel {
  WalletDataModel({
    required this.respdesc,
    required this.otp,
    required this.respcode,
    required this.mobile,
  });

  String respdesc;
  List<Otp> otp;
  String respcode;
  String mobile;

  factory WalletDataModel.fromJson(Map<String, dynamic> json) => WalletDataModel(
    respdesc: json["respdesc"],
    otp: List<Otp>.from(json["otp"].map((x) => Otp.fromJson(x))),
    respcode: json["respcode"],
    mobile: json["Mobile"],
  );

  Map<String, dynamic> toJson() => {
    "respdesc": respdesc,
    "otp": List<dynamic>.from(otp.map((x) => x.toJson())),
    "respcode": respcode,
    "Mobile": mobile,
  };
}

class Otp {
  Otp({
    required this.otp,
    required this.status,
  });

  String otp;
  String status;

  factory Otp.fromJson(Map<String, dynamic> json) => Otp(
    otp: json["otp"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "otp": otp,
    "status": status,
  };
}
