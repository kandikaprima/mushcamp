import 'dart:convert';

JamurModel jamurModelFromJson(String str) => JamurModel.fromJson(json.decode(str));

String jamurModelToJson(JamurModel data) => json.encode(data.toJson());

class JamurModel{
  JamurModel({
    required this.value,
    required this.status,
    required this.msg,
    this.content,
  });

  String value;
  String status;
  String msg;
  List<Content>? content;

  factory JamurModel.fromJson(Map<String, dynamic> json) => JamurModel(
    value: json["value"],
    status: json["status"],
    msg: json["msg"],
    content: List<Content>.from(json["content"].map((x) => Content.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "value": value,
    "status": status,
    "msg": msg,
    "content": List<dynamic>.from(content!.map((x) => x.toJson())),
  };
}

class Content{
  Content({
    this.idJamur,
    this.imgJamur,
    this.namaJamur,
    this.linkJamur,
  });

  String? idJamur;
  String? imgJamur;
  String? namaJamur;
  String? linkJamur;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
    idJamur: json["id_jamur"],
    imgJamur: json["img_jamur"],
    namaJamur: json["nama_jamur"],
    linkJamur: json["link_jamur"],
  );

  Map<String, dynamic> toJson() => {
    "id_jamur": idJamur,
    "img_jamur": imgJamur,
    "nama_jamur": namaJamur,
    "link_jamur": linkJamur,
  };
}